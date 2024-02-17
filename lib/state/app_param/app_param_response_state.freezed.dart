// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_param_response_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppParamResponseState {
  String get selectedJobYear => throw _privateConstructorUsedError;
  bool get dummyFlag => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppParamResponseStateCopyWith<AppParamResponseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppParamResponseStateCopyWith<$Res> {
  factory $AppParamResponseStateCopyWith(AppParamResponseState value,
          $Res Function(AppParamResponseState) then) =
      _$AppParamResponseStateCopyWithImpl<$Res, AppParamResponseState>;
  @useResult
  $Res call({String selectedJobYear, bool dummyFlag});
}

/// @nodoc
class _$AppParamResponseStateCopyWithImpl<$Res,
        $Val extends AppParamResponseState>
    implements $AppParamResponseStateCopyWith<$Res> {
  _$AppParamResponseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedJobYear = null,
    Object? dummyFlag = null,
  }) {
    return _then(_value.copyWith(
      selectedJobYear: null == selectedJobYear
          ? _value.selectedJobYear
          : selectedJobYear // ignore: cast_nullable_to_non_nullable
              as String,
      dummyFlag: null == dummyFlag
          ? _value.dummyFlag
          : dummyFlag // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppParamResponseStateImplCopyWith<$Res>
    implements $AppParamResponseStateCopyWith<$Res> {
  factory _$$AppParamResponseStateImplCopyWith(
          _$AppParamResponseStateImpl value,
          $Res Function(_$AppParamResponseStateImpl) then) =
      __$$AppParamResponseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String selectedJobYear, bool dummyFlag});
}

/// @nodoc
class __$$AppParamResponseStateImplCopyWithImpl<$Res>
    extends _$AppParamResponseStateCopyWithImpl<$Res,
        _$AppParamResponseStateImpl>
    implements _$$AppParamResponseStateImplCopyWith<$Res> {
  __$$AppParamResponseStateImplCopyWithImpl(_$AppParamResponseStateImpl _value,
      $Res Function(_$AppParamResponseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedJobYear = null,
    Object? dummyFlag = null,
  }) {
    return _then(_$AppParamResponseStateImpl(
      selectedJobYear: null == selectedJobYear
          ? _value.selectedJobYear
          : selectedJobYear // ignore: cast_nullable_to_non_nullable
              as String,
      dummyFlag: null == dummyFlag
          ? _value.dummyFlag
          : dummyFlag // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppParamResponseStateImpl implements _AppParamResponseState {
  const _$AppParamResponseStateImpl(
      {this.selectedJobYear = '', this.dummyFlag = false});

  @override
  @JsonKey()
  final String selectedJobYear;
  @override
  @JsonKey()
  final bool dummyFlag;

  @override
  String toString() {
    return 'AppParamResponseState(selectedJobYear: $selectedJobYear, dummyFlag: $dummyFlag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppParamResponseStateImpl &&
            (identical(other.selectedJobYear, selectedJobYear) ||
                other.selectedJobYear == selectedJobYear) &&
            (identical(other.dummyFlag, dummyFlag) ||
                other.dummyFlag == dummyFlag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedJobYear, dummyFlag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppParamResponseStateImplCopyWith<_$AppParamResponseStateImpl>
      get copyWith => __$$AppParamResponseStateImplCopyWithImpl<
          _$AppParamResponseStateImpl>(this, _$identity);
}

abstract class _AppParamResponseState implements AppParamResponseState {
  const factory _AppParamResponseState(
      {final String selectedJobYear,
      final bool dummyFlag}) = _$AppParamResponseStateImpl;

  @override
  String get selectedJobYear;
  @override
  bool get dummyFlag;
  @override
  @JsonKey(ignore: true)
  _$$AppParamResponseStateImplCopyWith<_$AppParamResponseStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
