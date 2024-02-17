import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/wts_item.dart';

part 'work_time_summary_response_state.freezed.dart';

@freezed
class WorkTimeSummaryResponseState with _$WorkTimeSummaryResponseState {
  const factory WorkTimeSummaryResponseState({
    @Default([]) List<WtsItem> wtsItemList,
    @Default({}) Map<String, WtsItem> wtsItemMap,
  }) = _WorkTimeSummaryResponseState;
}
