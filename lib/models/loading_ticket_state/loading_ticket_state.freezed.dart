// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loading_ticket_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoadingTicketState {
  int get received => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoadingTicketStateCopyWith<LoadingTicketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingTicketStateCopyWith<$Res> {
  factory $LoadingTicketStateCopyWith(
          LoadingTicketState value, $Res Function(LoadingTicketState) then) =
      _$LoadingTicketStateCopyWithImpl<$Res, LoadingTicketState>;
  @useResult
  $Res call({int received, int total});
}

/// @nodoc
class _$LoadingTicketStateCopyWithImpl<$Res, $Val extends LoadingTicketState>
    implements $LoadingTicketStateCopyWith<$Res> {
  _$LoadingTicketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? received = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      received: null == received
          ? _value.received
          : received // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoadingTicketStateCopyWith<$Res>
    implements $LoadingTicketStateCopyWith<$Res> {
  factory _$$_LoadingTicketStateCopyWith(_$_LoadingTicketState value,
          $Res Function(_$_LoadingTicketState) then) =
      __$$_LoadingTicketStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int received, int total});
}

/// @nodoc
class __$$_LoadingTicketStateCopyWithImpl<$Res>
    extends _$LoadingTicketStateCopyWithImpl<$Res, _$_LoadingTicketState>
    implements _$$_LoadingTicketStateCopyWith<$Res> {
  __$$_LoadingTicketStateCopyWithImpl(
      _$_LoadingTicketState _value, $Res Function(_$_LoadingTicketState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? received = null,
    Object? total = null,
  }) {
    return _then(_$_LoadingTicketState(
      received: null == received
          ? _value.received
          : received // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LoadingTicketState implements _LoadingTicketState {
  _$_LoadingTicketState({required this.received, required this.total});

  @override
  final int received;
  @override
  final int total;

  @override
  String toString() {
    return 'LoadingTicketState(received: $received, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingTicketState &&
            (identical(other.received, received) ||
                other.received == received) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, received, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingTicketStateCopyWith<_$_LoadingTicketState> get copyWith =>
      __$$_LoadingTicketStateCopyWithImpl<_$_LoadingTicketState>(
          this, _$identity);
}

abstract class _LoadingTicketState implements LoadingTicketState {
  factory _LoadingTicketState(
      {required final int received,
      required final int total}) = _$_LoadingTicketState;

  @override
  int get received;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingTicketStateCopyWith<_$_LoadingTicketState> get copyWith =>
      throw _privateConstructorUsedError;
}
