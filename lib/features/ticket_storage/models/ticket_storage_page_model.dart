import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:surf_flutter_study_jam_2023/models/ticket/ticket.dart';

part 'ticket_storage_page_model.freezed.dart';

@freezed
class TicketStoragePageModel with _$TicketStoragePageModel {
  factory TicketStoragePageModel({
    required List<Ticket> tickets,
  }) = _TicketStoragePageModel;
}
