import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/http/client.dart';
import '../../data/http/path.dart';
import '../../extensions/extensions.dart';
import '../../models/wts_item.dart';
import '../../models/wts_time.dart';
import '../../utility/utility.dart';
import 'work_time_summary_response_state.dart';

final workTimeSummaryProvider =
    StateNotifierProvider.autoDispose<WorkTimeSummaryNotifier, WorkTimeSummaryResponseState>((ref) {
  final client = ref.read(httpClientProvider);

  final utility = Utility();

  return WorkTimeSummaryNotifier(const WorkTimeSummaryResponseState(), client, utility)..getWorkTimeSummary();
});

class WorkTimeSummaryNotifier extends StateNotifier<WorkTimeSummaryResponseState> {
  WorkTimeSummaryNotifier(super.state, this.client, this.utility);

  final HttpClient client;
  final Utility utility;

  ///
  Future<void> getWorkTimeSummary() async {
    await client.post(path: APIPath.worktimesummary).then((value) {
      final list = <WtsItem>[];

      final map = <String, WtsItem>{};

      // ignore: avoid_dynamic_calls
      for (var i = 0; i < value['data'].length.toString().toInt(); i++) {
        // ignore: avoid_dynamic_calls
        final exValue = value['data'][i].toString().split(';');

        final listItem = exValue[exValue.length - 1].split('/');

        final list2 = <WtsTime>[];
        listItem.forEach((element) {
          final exElement = element.split('|');

          list2.add(
            WtsTime(
              day: exElement[0],
              start: exElement[1],
              end: exElement[2],
              work: exElement[3],
              rest: exElement[4],
              youbiNum: exElement[5],
            ),
          );
        });

        list.add(
          WtsItem(
            yearmonth: exValue[0],
            workSum: exValue[1],
            company: exValue[2],
            genba: exValue[3],
            salary: exValue[4],
            hourSalary: exValue[5],
            wtsTimes: list2,
          ),
        );

        map[exValue[0]] = WtsItem(
          yearmonth: exValue[0],
          workSum: exValue[1],
          company: exValue[2],
          genba: exValue[3],
          salary: exValue[4],
          hourSalary: exValue[5],
          wtsTimes: list2,
        );
      }

      state = state.copyWith(wtsItemList: list, wtsItemMap: map);
    }).catchError((error, _) {
      utility.showError('予期せぬエラーが発生しました');
    });
  }
}
