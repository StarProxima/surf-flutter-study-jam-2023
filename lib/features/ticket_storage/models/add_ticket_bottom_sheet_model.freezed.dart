// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_ticket_bottom_sheet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddTicketBottomSheetModel {
  String? get errorText => throw _privateConstructorUsedError;
  bool get allowAdding => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTicketBottomSheetModelCopyWith<AddTicketBottomSheetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTicketBottomSheetModelCopyWith<$Res> {
  factory $AddTicketBottomSheetModelCopyWith(AddTicketBottomSheetModel value,
          $Res Function(AddTicketBottomSheetModel) then) =
      _$AddTicketBottomSheetModelCopyWithImpl<$Res, AddTicketBottomSheetModel>;
  @useResult
  $Res call({String? errorText, bool allowAdding});
}

/// @nodoc
class _$AddTicketBottomSheetModelCopyWithImpl<$Res,
        $Val extends AddTicketBottomSheetModel>
    implements $AddTicketBottomSheetModelCopyWith<$Res> {
  _$AddTicketBottomSheetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = freezed,
    Object? allowAdding = null,
  }) {
    return _then(_value.copyWith(
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      allowAdding: null == allowAdding
          ? _value.allowAdding
          : allowAdding // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddTicketBottomSheetModelCopyWith<$Res>
    implements $AddTicketBottomSheetModelCopyWith<$Res> {
  factory _$$_AddTicketBottomSheetModelCopyWith(
          _$_AddTicketBottomSheetModel value,
          $Res Function(_$_AddTicketBottomSheetModel) then) =
      __$$_AddTicketBottomSheetModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? errorText, bool allowAdding});
}

/// @nodoc
class __$$_AddTicketBottomSheetModelCopyWithImpl<$Res>
    extends _$AddTicketBottomSheetModelCopyWithImpl<$Res,
        _$_AddTicketBottomSheetModel>
    implements _$$_AddTicketBottomSheetModelCopyWith<$Res> {
  __$$_AddTicketBottomSheetModelCopyWithImpl(
      _$_AddTicketBottomSheetModel _value,
      $Res Function(_$_AddTicketBottomSheetModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = freezed,
    Object? allowAdding = null,
  }) {
    return _then(_$_AddTicketBottomSheetModel(
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      allowAdding: null == allowAdding
          ? _value.allowAdding
          : allowAdding // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddTicketBottomSheetModel implements _AddTicketBottomSheetModel {
  _$_AddTicketBottomSheetModel(
      {required this.errorText, required this.allowAdding});

  @override
  final String? errorText;
  @override
  final bool allowAdding;

  @override
  String toString() {
    return 'AddTicketBottomSheetModel(errorText: $errorText, allowAdding: $allowAdding)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTicketBottomSheetModel &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            (identical(other.allowAdding, allowAdding) ||
                other.allowAdding == allowAdding));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText, allowAdding);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddTicketBottomSheetModelCopyWith<_$_AddTicketBottomSheetModel>
      get copyWith => __$$_AddTicketBottomSheetModelCopyWithImpl<
          _$_AddTicketBottomSheetModel>(this, _$identity);
}

abstract class _AddTicketBottomSheetModel implements AddTicketBottomSheetModel {
  factory _AddTicketBottomSheetModel(
      {required final String? errorText,
      required final bool allowAdding}) = _$_AddTicketBottomSheetModel;

  @override
  String? get errorText;
  @override
  bool get allowAdding;
  @override
  @JsonKey(ignore: true)
  _$$_AddTicketBottomSheetModelCopyWith<_$_AddTicketBottomSheetModel>
      get copyWith => throw _privateConstructorUsedError;
}
