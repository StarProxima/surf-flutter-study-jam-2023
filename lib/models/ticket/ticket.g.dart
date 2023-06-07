// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TicketAdapter extends TypeAdapter<_$_Ticket> {
  @override
  final int typeId = 0;

  @override
  _$_Ticket read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Ticket(
      name: fields[0] as String,
      url: fields[1] as String,
      status: fields[2] as TicketStatus,
      createDate: fields[3] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Ticket obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.url)
      ..writeByte(2)
      ..write(obj.status)
      ..writeByte(3)
      ..write(obj.createDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TicketAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ticket _$$_TicketFromJson(Map<String, dynamic> json) => _$_Ticket(
      name: json['name'] as String,
      url: json['url'] as String,
      status: $enumDecode(_$TicketStatusEnumMap, json['status']),
      createDate: DateTime.parse(json['createDate'] as String),
    );

Map<String, dynamic> _$$_TicketToJson(_$_Ticket instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'status': _$TicketStatusEnumMap[instance.status]!,
      'createDate': instance.createDate.toIso8601String(),
    };

const _$TicketStatusEnumMap = {
  TicketStatus.loadingPending: 'loadingPending',
  TicketStatus.loading: 'loading',
  TicketStatus.paused: 'paused',
  TicketStatus.saved: 'saved',
};
