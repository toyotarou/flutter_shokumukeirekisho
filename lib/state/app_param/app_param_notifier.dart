import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'app_param_response_state.dart';

final appParamProvider = StateNotifierProvider.autoDispose<AppParamNotifier, AppParamResponseState>((ref) {
  return AppParamNotifier(const AppParamResponseState());
});

class AppParamNotifier extends StateNotifier<AppParamResponseState> {
  AppParamNotifier(super.state);

  ///
  Future<void> setSelectedJobYear({required String year}) async => state = state.copyWith(selectedJobYear: year);

  ///
  Future<void> setDummyFlag({required bool flag}) async => state = state.copyWith(dummyFlag: flag);
}
