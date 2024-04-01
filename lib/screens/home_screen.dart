import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../collections/job_dummy.dart';
import '../collections/job_history.dart';
import '../extensions/extensions.dart';
import '../state/app_param/app_param_notifier.dart';
import '../state/work_time_summary/work_time_summary_notifier.dart';
import '../utility/utility.dart';
import 'components/job_history_input_alert.dart';
import 'components/parts/job_dialog.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key, required this.isar});

  final Isar isar;

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  Utility utility = Utility();

  List<String> yearmonthList = [];
  List<String> yearList = [];

  List<JobHistory>? jobHistoryList = [];
  Map<String, JobHistory> jobHistoryMap = {};

  List<JobDummy>? jobDummyList = [];
  Map<String, JobDummy> jobDummyMap = {};

  final yearmonthListScrollController = AutoScrollController();
  final yearListScrollController = AutoScrollController();

  JobHistory jobHistoryDefault = JobHistory()
    ..yearmonth = ''
    ..jobName = ''
    ..spot = ''
    ..company = '';
  JobDummy jobDummyDefault = JobDummy()
    ..yearmonth = ''
    ..jobName = ''
    ..spot = ''
    ..company = '';

  ///
  void _init() {
    _makeYearmonthList();

    _makeJobHistoryList();
    _makeJobDummyList();
  }

  ///
  @override
  Widget build(BuildContext context) {
    Future(_init);

    final dummyFlag = ref.watch(appParamProvider.select((value) => value.dummyFlag));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Job History'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () => ref.read(appParamProvider.notifier).setDummyFlag(flag: !dummyFlag),
            icon: Icon(
              Icons.ac_unit,
              color: dummyFlag ? Colors.yellowAccent : Colors.white,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            utility.getBackGround(),
            DefaultTextStyle(
              style: GoogleFonts.kiwiMaru(fontSize: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(width: context.screenSize.width),
                  _displayYearList(),
                  const SizedBox(height: 10),
                  Expanded(child: _displayYearMonthList()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///
  void _makeYearmonthList() {
    yearmonthList = [];
    yearList = [];

    final start = DateTime.parse('1999-10-01 00:00:00');
    final diff = DateTime.now().difference(start).inDays;

    final map = <String, String>{};
    final map2 = <String, String>{};

    for (var i = 0; i <= diff; i++) {
      final genDate = start.add(Duration(days: i));
      map[genDate.yyyymm] = '';
      map2[genDate.year.toString()] = '';
    }

    map.forEach((key, value) => yearmonthList.add(key));

    map2.forEach((key, value) => yearList.add(key));
  }

  ///
  Widget _displayYearMonthList() {
    final list = <Widget>[];

    var ymList = <String>[];

    final selectedJobYear = ref.watch(appParamProvider.select((value) => value.selectedJobYear));

    if (selectedJobYear != '') {
      ymList = yearmonthList.where((element) => element.split('-')[0] == selectedJobYear).toList();
    } else {
      ymList = yearmonthList;
    }

    final dummyFlag = ref.watch(appParamProvider.select((value) => value.dummyFlag));

    final wtsItemMap = ref.watch(workTimeSummaryProvider.select((value) => value.wtsItemMap));

    for (var i = 0; i < ymList.length; i++) {
      var jobHistory = jobHistoryDefault;
      var jobDummy = jobDummyDefault;

      if (dummyFlag) {
        if (jobDummyMap[ymList[i]] != null) {
          jobDummy = jobDummyMap[ymList[i]]!;
        }
      } else {
        if (jobHistoryMap[ymList[i]] != null) {
          jobHistory = jobHistoryMap[ymList[i]]!;
        }
      }

      if (selectedJobYear == '') {
        final exYm = ymList[i].split('-');
        if (exYm[1] == '01') {
          list.add(
            Container(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.yellowAccent.withOpacity(0.4),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(exYm[0]),
            ),
          );
        }
      }

      list.add(AutoScrollTag(
        key: ValueKey(i),
        index: i,
        controller: yearmonthListScrollController,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.white.withOpacity(0.3)))),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: context.screenSize.height / 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    final thisMonthJobHistory =
                        jobHistoryList!.where((element2) => element2.yearmonth == ymList[i]).toList();

                    final thisMonthJobDummy =
                        jobDummyList!.where((element2) => element2.yearmonth == ymList[i]).toList();

                    var jobHistory = jobHistoryDefault;
                    var jobDummy = jobDummyDefault;

                    if (dummyFlag) {
                      if (thisMonthJobDummy.isNotEmpty) {
                        jobDummy = thisMonthJobDummy[0];
                      }
                    } else {
                      if (thisMonthJobHistory.isNotEmpty) {
                        jobHistory = thisMonthJobHistory[0];
                      }
                    }

                    JobDialog(
                      context: context,
                      widget: JobHistoryInputAlert(
                          isar: widget.isar, yearmonth: ymList[i], jobHistory: jobHistory, jobDummy: jobDummy),
                    );
                  },
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: _getCircleAvatarBgColor(yearmonth: ymList[i]),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(child: Text(ymList[i])),
                Expanded(
                  flex: 3,
                  child: dummyFlag
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              jobDummy.jobName,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: (jobHistory.jobName == jobDummy.jobName) ? Colors.yellowAccent : Colors.white,
                              ),
                            ),
                            const SizedBox(height: 10),
                            DefaultTextStyle(
                              style: const TextStyle(fontSize: 10, color: Colors.grey),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [Text(jobDummy.spot), Text(jobDummy.company)],
                              ),
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(jobHistory.jobName, overflow: TextOverflow.ellipsis),
                            const SizedBox(height: 10),
                            DefaultTextStyle(
                              style: const TextStyle(fontSize: 10, color: Colors.grey),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(jobHistory.spot),
                                  Text(jobHistory.company),
                                  if (wtsItemMap[ymList[i]] != null) ...[
                                    const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          wtsItemMap[ymList[i]]!.workSum,
                                          style: const TextStyle(color: Color(0xFFFBB6CE)),
                                        ),
                                        Text(
                                          (wtsItemMap[ymList[i]] != null && wtsItemMap[ymList[i]]!.salary != '')
                                              ? wtsItemMap[ymList[i]]!.salary.toCurrency()
                                              : '',
                                          style: const TextStyle(color: Color(0xFFFBB6CE)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ],
                              ),
                            ),
                          ],
                        ),
                ),
              ],
            ),
          ),
        ),
      ));
    }

    return SingleChildScrollView(
      controller: yearmonthListScrollController,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: list),
    );
  }

  ///
  Color _getCircleAvatarBgColor({required String yearmonth}) {
    final dummyFlag = ref.watch(appParamProvider.select((value) => value.dummyFlag));

    var length = 0;

    if (dummyFlag) {
      if (jobDummyList != null) {
        length = jobDummyList!.where((element) => element.yearmonth == yearmonth).toList().length;
      }
    } else {
      if (jobHistoryList != null) {
        length = jobHistoryList!.where((element) => element.yearmonth == yearmonth).toList().length;
      }
    }

    return (length > 0) ? Colors.greenAccent.withOpacity(0.3) : Colors.greenAccent.withOpacity(0.1);
  }

  ///
  Widget _displayYearList() {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              ref.read(appParamProvider.notifier).setSelectedJobYear(year: '');

              yearmonthListScrollController.scrollToIndex(0);
              yearListScrollController.scrollToIndex(0);
            },
            icon: const Icon(Icons.close)),
        Expanded(child: _displayYearItem()),
      ],
    );
  }

  ///
  Widget _displayYearItem() {
    final selectedJobYear = ref.watch(appParamProvider.select((value) => value.selectedJobYear));

    final list = <Widget>[];

    for (var i = 0; i < yearList.length; i++) {
      list.add(AutoScrollTag(
        key: ValueKey(i),
        index: i,
        controller: yearListScrollController,
        child: GestureDetector(
          onTap: () {
            ref.read(appParamProvider.notifier).setSelectedJobYear(year: yearList[i]);

            yearmonthListScrollController.scrollToIndex(0);
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
            decoration: BoxDecoration(
              color: (yearList[i] == selectedJobYear) ? Colors.yellowAccent.withOpacity(0.2) : Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(yearList[i]),
          ),
        ),
      ));
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      controller: yearListScrollController,
      child: Row(children: list),
    );
  }

  ///
  Future<void> _makeJobHistoryList() async {
    final jobHistoryCollection = widget.isar.jobHistorys;

    final getJobHistorys = await jobHistoryCollection.where().findAll();

    if (mounted) {
      setState(() {
        jobHistoryList = getJobHistorys;

        if (jobHistoryList != null) {
          _makeJobHistoryMap(jobHistoryList: jobHistoryList!);
        }
      });
    }
  }

  ///
  void _makeJobHistoryMap({required List<JobHistory> jobHistoryList}) {
    final map = <String, JobHistory>{};
    jobHistoryList.forEach((element) => map[element.yearmonth] = element);

    var jobHistory = jobHistoryDefault;

    yearmonthList.forEach((element) {
      if (map[element] != null) {
        jobHistory = map[element]!;
      }

      jobHistoryMap[element] = jobHistory;
    });
  }

  ///
  Future<void> _makeJobDummyList() async {
    final jobDummyCollection = widget.isar.jobDummys;

    final getJobDummys = await jobDummyCollection.where().findAll();

    if (mounted) {
      setState(() {
        jobDummyList = getJobDummys;

        if (jobDummyList != null) {
          _makeJobDummyMap(jobDummyList: jobDummyList!);
        }
      });
    }
  }

  ///
  void _makeJobDummyMap({required List<JobDummy> jobDummyList}) {
    final map = <String, JobDummy>{};
    jobDummyList.forEach((element) => map[element.yearmonth] = element);

    var jobDummy = jobDummyDefault;

    yearmonthList.forEach((element) {
      if (map[element] != null) {
        jobDummy = map[element]!;
      }

      jobDummyMap[element] = jobDummy;
    });
  }
}
