// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ticket _$TicketFromJson(Map<String, dynamic> json) {
  return _Ticket.fromJson(json);
}

/// @nodoc
mixin _$Ticket {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  String get url => throw _privateConstructorUsedError;
  @HiveField(2)
  TicketStatus get status => throw _privateConstructorUsedError;
  @HiveField(3)
  DateTime get createDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketCopyWith<Ticket> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketCopyWith<$Res> {
  factory $TicketCopyWith(Ticket value, $Res Function(Ticket) then) =
      _$TicketCopyWithImpl<$Res, Ticket>;
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) String url,
      @HiveField(2) TicketStatus status,
      @HiveField(3) DateTime createDate});
}

/// @nodoc
class _$TicketCopyWithImpl<$Res, $Val extends Ticket>
    implements $TicketCopyWith<$Res> {
  _$TicketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
    Object? status = null,
    Object? createDate = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TicketStatus,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TicketCopyWith<$Res> implements $TicketCopyWith<$Res> {
  factory _$$_TicketCopyWith(_$_Ticket value, $Res Function(_$_Ticket) then) =
      __$$_TicketCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) String url,
      @HiveField(2) TicketStatus status,
      @HiveField(3) DateTime createDate});
}

/// @nodoc
class __$$_TicketCopyWithImpl<$Res>
    extends _$TicketCopyWithImpl<$Res, _$_Ticket>
    implements _$$_TicketCopyWith<$Res> {
  __$$_TicketCopyWithImpl(_$_Ticket _value, $Res Function(_$_Ticket) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
    Object? status = null,
    Object? createDate = null,
  }) {
    return _then(_$_Ticket(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TicketStatus,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$_Ticket implements _Ticket {
  _$_Ticket(
      {@HiveField(0) required this.name,
      @HiveField(1) required this.url,
      @HiveField(2) required this.status,
      @HiveField(3) required this.createDate});

  factory _$_Ticket.fromJson(Map<String, dynamic> json) =>
      _$$_TicketFromJson(json);

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final String url;
  @override
  @HiveField(2)
  final TicketStatus status;
  @override
  @HiveField(3)
  final DateTime createDate;

  @override
  String toString() {
    return 'Ticket(name: $name, url: $url, status: $status, createDate: $createDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ticket &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url, status, createDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketCopyWith<_$_Ticket> get copyWith =>
      __$$_TicketCopyWithImpl<_$_Ticket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketToJson(
      this,
    );
  }
}

abstract class _Ticket implements Ticket {
  factory _Ticket(
      {@HiveField(0) required final String name,
      @HiveField(1) required final String url,
      @HiveField(2) required final TicketStatus status,
      @HiveField(3) required final DateTime createDate}) = _$_Ticket;

  factory _Ticket.fromJson(Map<String, dynamic> json) = _$_Ticket.fromJson;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  String get url;
  @override
  @HiveField(2)
  TicketStatus get status;
  @override
  @HiveField(3)
  DateTime get createDate;
  @override
  @JsonKey(ignore: true)
  _$$_TicketCopyWith<_$_Ticket> get copyWith =>
      throw _privateConstructorUsedError;
}
