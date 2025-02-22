// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_storage_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketStoragePageModel {
  List<Ticket> get tickets => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketStoragePageModelCopyWith<TicketStoragePageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketStoragePageModelCopyWith<$Res> {
  factory $TicketStoragePageModelCopyWith(TicketStoragePageModel value,
          $Res Function(TicketStoragePageModel) then) =
      _$TicketStoragePageModelCopyWithImpl<$Res, TicketStoragePageModel>;
  @useResult
  $Res call({List<Ticket> tickets});
}

/// @nodoc
class _$TicketStoragePageModelCopyWithImpl<$Res,
        $Val extends TicketStoragePageModel>
    implements $TicketStoragePageModelCopyWith<$Res> {
  _$TicketStoragePageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickets = null,
  }) {
    return _then(_value.copyWith(
      tickets: null == tickets
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TicketStoragePageModelCopyWith<$Res>
    implements $TicketStoragePageModelCopyWith<$Res> {
  factory _$$_TicketStoragePageModelCopyWith(_$_TicketStoragePageModel value,
          $Res Function(_$_TicketStoragePageModel) then) =
      __$$_TicketStoragePageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Ticket> tickets});
}

/// @nodoc
class __$$_TicketStoragePageModelCopyWithImpl<$Res>
    extends _$TicketStoragePageModelCopyWithImpl<$Res,
        _$_TicketStoragePageModel>
    implements _$$_TicketStoragePageModelCopyWith<$Res> {
  __$$_TicketStoragePageModelCopyWithImpl(_$_TicketStoragePageModel _value,
      $Res Function(_$_TicketStoragePageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickets = null,
  }) {
    return _then(_$_TicketStoragePageModel(
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
    ));
  }
}

/// @nodoc

class _$_TicketStoragePageModel implements _TicketStoragePageModel {
  _$_TicketStoragePageModel({required final List<Ticket> tickets})
      : _tickets = tickets;

  final List<Ticket> _tickets;
  @override
  List<Ticket> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  String toString() {
    return 'TicketStoragePageModel(tickets: $tickets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketStoragePageModel &&
            const DeepCollectionEquality().equals(other._tickets, _tickets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tickets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketStoragePageModelCopyWith<_$_TicketStoragePageModel> get copyWith =>
      __$$_TicketStoragePageModelCopyWithImpl<_$_TicketStoragePageModel>(
          this, _$identity);
}

abstract class _TicketStoragePageModel implements TicketStoragePageModel {
  factory _TicketStoragePageModel({required final List<Ticket> tickets}) =
      _$_TicketStoragePageModel;

  @override
  List<Ticket> get tickets;
  @override
  @JsonKey(ignore: true)
  _$$_TicketStoragePageModelCopyWith<_$_TicketStoragePageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
