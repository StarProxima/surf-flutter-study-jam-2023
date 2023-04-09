import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:surf_flutter_study_jam_2023/models/ticket_status/ticket_status.dart';

part 'ticket.freezed.dart';
part 'ticket.g.dart';

@freezed
class Ticket with _$Ticket {
  factory Ticket({
    required String name,
    required Uri url,
    required TicketStatus status,
    required DateTime createDate,
  }) = _Ticket;

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);
}
