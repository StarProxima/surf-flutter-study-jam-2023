// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ticket _$$_TicketFromJson(Map<String, dynamic> json) => _$_Ticket(
      name: json['name'] as String,
      url: Uri.parse(json['url'] as String),
      status: $enumDecode(_$TicketStatusEnumMap, json['status']),
      createDate: DateTime.parse(json['createDate'] as String),
    );

Map<String, dynamic> _$$_TicketToJson(_$_Ticket instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url.toString(),
      'status': _$TicketStatusEnumMap[instance.status]!,
      'createDate': instance.createDate.toIso8601String(),
    };

const _$TicketStatusEnumMap = {
  TicketStatus.loadingPending: 'loadingPending',
  TicketStatus.loading: 'loading',
  TicketStatus.saved: 'saved',
};
