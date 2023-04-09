import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'package:surf_flutter_study_jam_2023/models/ticket_status/ticket_status.dart';

part 'ticket.freezed.dart';
part 'ticket.g.dart';

@freezed
class Ticket with _$Ticket {
  @HiveType(typeId: 0)
  factory Ticket({
    @HiveField(0) required String name,
    @HiveField(1) required String url,
    @HiveField(2) required TicketStatus status,
    @HiveField(3) required DateTime createDate,
  }) = _Ticket;

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);
}
