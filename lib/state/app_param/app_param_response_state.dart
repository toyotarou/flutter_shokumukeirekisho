import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_param_response_state.freezed.dart';

@freezed
class AppParamResponseState with _$AppParamResponseState {
  const factory AppParamResponseState({
    @Default('') String selectedJobYear,
    @Default(false) bool dummyFlag,
  }) = _AppParamResponseState;
}
