// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_time_summary_response_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WorkTimeSummaryResponseState {
  List<WtsItem> get wtsItemList => throw _privateConstructorUsedError;
  Map<String, WtsItem> get wtsItemMap => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkTimeSummaryResponseStateCopyWith<WorkTimeSummaryResponseState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkTimeSummaryResponseStateCopyWith<$Res> {
  factory $WorkTimeSummaryResponseStateCopyWith(
          WorkTimeSummaryResponseState value,
          $Res Function(WorkTimeSummaryResponseState) then) =
      _$WorkTimeSummaryResponseStateCopyWithImpl<$Res,
          WorkTimeSummaryResponseState>;
  @useResult
  $Res call({List<WtsItem> wtsItemList, Map<String, WtsItem> wtsItemMap});
}

/// @nodoc
class _$WorkTimeSummaryResponseStateCopyWithImpl<$Res,
        $Val extends WorkTimeSummaryResponseState>
    implements $WorkTimeSummaryResponseStateCopyWith<$Res> {
  _$WorkTimeSummaryResponseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wtsItemList = null,
    Object? wtsItemMap = null,
  }) {
    return _then(_value.copyWith(
      wtsItemList: null == wtsItemList
          ? _value.wtsItemList
          : wtsItemList // ignore: cast_nullable_to_non_nullable
              as List<WtsItem>,
      wtsItemMap: null == wtsItemMap
          ? _value.wtsItemMap
          : wtsItemMap // ignore: cast_nullable_to_non_nullable
              as Map<String, WtsItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkTimeSummaryResponseStateImplCopyWith<$Res>
    implements $WorkTimeSummaryResponseStateCopyWith<$Res> {
  factory _$$WorkTimeSummaryResponseStateImplCopyWith(
          _$WorkTimeSummaryResponseStateImpl value,
          $Res Function(_$WorkTimeSummaryResponseStateImpl) then) =
      __$$WorkTimeSummaryResponseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WtsItem> wtsItemList, Map<String, WtsItem> wtsItemMap});
}

/// @nodoc
class __$$WorkTimeSummaryResponseStateImplCopyWithImpl<$Res>
    extends _$WorkTimeSummaryResponseStateCopyWithImpl<$Res,
        _$WorkTimeSummaryResponseStateImpl>
    implements _$$WorkTimeSummaryResponseStateImplCopyWith<$Res> {
  __$$WorkTimeSummaryResponseStateImplCopyWithImpl(
      _$WorkTimeSummaryResponseStateImpl _value,
      $Res Function(_$WorkTimeSummaryResponseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wtsItemList = null,
    Object? wtsItemMap = null,
  }) {
    return _then(_$WorkTimeSummaryResponseStateImpl(
      wtsItemList: null == wtsItemList
          ? _value._wtsItemList
          : wtsItemList // ignore: cast_nullable_to_non_nullable
              as List<WtsItem>,
      wtsItemMap: null == wtsItemMap
          ? _value._wtsItemMap
          : wtsItemMap // ignore: cast_nullable_to_non_nullable
              as Map<String, WtsItem>,
    ));
  }
}

/// @nodoc

class _$WorkTimeSummaryResponseStateImpl
    implements _WorkTimeSummaryResponseState {
  const _$WorkTimeSummaryResponseStateImpl(
      {final List<WtsItem> wtsItemList = const [],
      final Map<String, WtsItem> wtsItemMap = const {}})
      : _wtsItemList = wtsItemList,
        _wtsItemMap = wtsItemMap;

  final List<WtsItem> _wtsItemList;
  @override
  @JsonKey()
  List<WtsItem> get wtsItemList {
    if (_wtsItemList is EqualUnmodifiableListView) return _wtsItemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wtsItemList);
  }

  final Map<String, WtsItem> _wtsItemMap;
  @override
  @JsonKey()
  Map<String, WtsItem> get wtsItemMap {
    if (_wtsItemMap is EqualUnmodifiableMapView) return _wtsItemMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_wtsItemMap);
  }

  @override
  String toString() {
    return 'WorkTimeSummaryResponseState(wtsItemList: $wtsItemList, wtsItemMap: $wtsItemMap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkTimeSummaryResponseStateImpl &&
            const DeepCollectionEquality()
                .equals(other._wtsItemList, _wtsItemList) &&
            const DeepCollectionEquality()
                .equals(other._wtsItemMap, _wtsItemMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_wtsItemList),
      const DeepCollectionEquality().hash(_wtsItemMap));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkTimeSummaryResponseStateImplCopyWith<
          _$WorkTimeSummaryResponseStateImpl>
      get copyWith => __$$WorkTimeSummaryResponseStateImplCopyWithImpl<
          _$WorkTimeSummaryResponseStateImpl>(this, _$identity);
}

abstract class _WorkTimeSummaryResponseState
    implements WorkTimeSummaryResponseState {
  const factory _WorkTimeSummaryResponseState(
          {final List<WtsItem> wtsItemList,
          final Map<String, WtsItem> wtsItemMap}) =
      _$WorkTimeSummaryResponseStateImpl;

  @override
  List<WtsItem> get wtsItemList;
  @override
  Map<String, WtsItem> get wtsItemMap;
  @override
  @JsonKey(ignore: true)
  _$$WorkTimeSummaryResponseStateImplCopyWith<
          _$WorkTimeSummaryResponseStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
