import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';

import '../../collections/job_dummy.dart';
import '../../collections/job_history.dart';
import '../../extensions/extensions.dart';
import '../../state/app_param/app_param_notifier.dart';
import 'parts/error_dialog.dart';

class JobHistoryInputAlert extends ConsumerStatefulWidget {
  const JobHistoryInputAlert({
    super.key,
    required this.yearmonth,
    required this.isar,
    this.jobHistory,
    this.jobDummy,
  });

  final Isar isar;
  final String yearmonth;

  final JobHistory? jobHistory;
  final JobDummy? jobDummy;

  @override
  ConsumerState<JobHistoryInputAlert> createState() => _JobHistoryInputAlertState();
}

class _JobHistoryInputAlertState extends ConsumerState<JobHistoryInputAlert> {
  final TextEditingController _jobNameEditingController = TextEditingController();
  final TextEditingController _spotEditingController = TextEditingController();
  final TextEditingController _companyEditingController = TextEditingController();

  List<JobHistory>? jobHistoryList = [];
  List<JobDummy>? jobDummyList = [];

  ///
  @override
  void initState() {
    super.initState();

    if (widget.jobHistory != null && widget.jobHistory!.jobName != '') {
      _jobNameEditingController.text = widget.jobHistory!.jobName;
      _spotEditingController.text = widget.jobHistory!.spot;
      _companyEditingController.text = widget.jobHistory!.company;
    }

    if (widget.jobDummy != null && widget.jobDummy!.jobName != '') {
      _jobNameEditingController.text = widget.jobDummy!.jobName;
      _spotEditingController.text = widget.jobDummy!.spot;
      _companyEditingController.text = widget.jobDummy!.company;
    }
  }

  ///
  void _init() {
    _makeJobHistoryList();
    _makeJobDummyList();
  }

  ///
  @override
  Widget build(BuildContext context) {
    Future(_init);

    return AlertDialog(
      titlePadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      content: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        child: DefaultTextStyle(
          style: GoogleFonts.kiwiMaru(fontSize: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Container(width: context.screenSize.width),
              Text(widget.yearmonth),
              Divider(color: Colors.white.withOpacity(0.4), thickness: 5),
              _displayInputParts(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  TextButton(
                    onPressed: _inputJobHistory,
                    child: const Text('職歴を追加する', style: TextStyle(fontSize: 12)),
                  ),
                ],
              ),
              Expanded(child: _displayJobHistory()),
            ],
          ),
        ),
      ),
    );
  }

  ///
  Widget _displayInputParts() {
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(blurRadius: 24, spreadRadius: 16, color: Colors.black.withOpacity(0.2)),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
          child: Container(
            width: context.screenSize.width,
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white.withOpacity(0.2), width: 1.5),
            ),
            child: Column(
              children: [
                TextField(
                  controller: _jobNameEditingController,
                  decoration: const InputDecoration(labelText: '案件名'),
                  style: const TextStyle(fontSize: 13, color: Colors.white),
                  onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
                ),
                TextField(
                  controller: _spotEditingController,
                  decoration: const InputDecoration(labelText: '現場名'),
                  style: const TextStyle(fontSize: 13, color: Colors.white),
                  onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
                ),
                TextField(
                  controller: _companyEditingController,
                  decoration: const InputDecoration(labelText: '会社名'),
                  style: const TextStyle(fontSize: 13, color: Colors.white),
                  onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ///
  Future<void> _inputJobHistory() async {
    if (_jobNameEditingController.text == '' ||
        _spotEditingController.text == '' ||
        _companyEditingController.text == '') {
      Future.delayed(
        Duration.zero,
        () => error_dialog(context: context, title: '登録できません。', content: '値を正しく入力してください。'),
      );

      return;
    }

    final dummyFlag = ref.watch(appParamProvider.select((value) => value.dummyFlag));

    if (dummyFlag) {
      final jobDummy = JobDummy()
        ..yearmonth = widget.yearmonth
        ..jobName = _jobNameEditingController.text
        ..spot = _spotEditingController.text
        ..company = _companyEditingController.text;

      await widget.isar.writeTxn(() async => widget.isar.jobDummys.put(jobDummy));
    } else {
      final jobHistory = JobHistory()
        ..yearmonth = widget.yearmonth
        ..jobName = _jobNameEditingController.text
        ..spot = _spotEditingController.text
        ..company = _companyEditingController.text;

      await widget.isar.writeTxn(() async => widget.isar.jobHistorys.put(jobHistory));
    }

    _jobNameEditingController.clear();
    _spotEditingController.clear();
    _companyEditingController.clear();

    if (mounted) {
      Navigator.pop(context);
    }
  }

  ///
  Future<void> _makeJobHistoryList() async {
    final jobHistoryCollection = widget.isar.jobHistorys;

    final getJobHistorys = await jobHistoryCollection.where().findAll();

    if (mounted) {
      setState(() {
        jobHistoryList = getJobHistorys;
      });
    }
  }

  ///
  Future<void> _makeJobDummyList() async {
    final jobDummyCollection = widget.isar.jobDummys;

    final getJobDummys = await jobDummyCollection.where().findAll();

    if (mounted) {
      setState(() {
        jobDummyList = getJobDummys;
      });
    }
  }

  ///
  Widget _displayJobHistory() {
    final list = <Widget>[];

    final dummyFlag = ref.watch(appParamProvider.select((value) => value.dummyFlag));

    if (dummyFlag) {
      jobDummyList?.forEach((element) {
        if (widget.yearmonth == element.yearmonth) {
          list.add(
            jobDisplayParts(id: element.id, jobName: element.jobName, spot: element.spot, company: element.company),
          );
        }
      });
    } else {
      jobHistoryList?.forEach((element) {
        if (widget.yearmonth == element.yearmonth) {
          list.add(
            jobDisplayParts(id: element.id, jobName: element.jobName, spot: element.spot, company: element.company),
          );
        }
      });
    }

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: list,
      ),
    );
  }

  ///
  Widget jobDisplayParts({required int id, required String jobName, required String spot, required String company}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(border: Border.all(color: Colors.white.withOpacity(0.4))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(jobName),
          Text(spot),
          Text(company),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              GestureDetector(
                onTap: () {
                  _showDeleteDialog(id: id);
                },
                child: Text(
                  '削除する',
                  style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.primary),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  ///
  void _showDeleteDialog({required int id}) {
    final Widget cancelButton = TextButton(onPressed: () => Navigator.pop(context), child: const Text('いいえ'));

    final Widget continueButton = TextButton(
        onPressed: () {
          _deleteJobHistory(id: id);

          Navigator.pop(context);
        },
        child: const Text('はい'));

    final alert = AlertDialog(
      backgroundColor: Colors.blueGrey.withOpacity(0.3),
      content: const Text('このデータを消去しますか？'),
      actions: [cancelButton, continueButton],
    );

    showDialog(context: context, builder: (BuildContext context) => alert);
  }

  ///
  Future<void> _deleteJobHistory({required int id}) async {
    final dummyFlag = ref.watch(appParamProvider.select((value) => value.dummyFlag));

    if (dummyFlag) {
      final jobDummysCollection = widget.isar.jobDummys;
      await widget.isar.writeTxn(() async => jobDummysCollection.delete(id));
    } else {
      final jobHistorysCollection = widget.isar.jobHistorys;
      await widget.isar.writeTxn(() async => jobHistorysCollection.delete(id));
    }

    _jobNameEditingController.clear();
    _spotEditingController.clear();
    _companyEditingController.clear();
  }
}
