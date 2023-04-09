import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:surf_flutter_study_jam_2023/features/ticket_storage/state_holders/ticket_stotage_page_state_holder.dart';

import 'package:surf_flutter_study_jam_2023/models/ticket/ticket.dart';
import 'package:surf_flutter_study_jam_2023/models/ticket_status/ticket_status.dart';

final ticketStorageManager = Provider<TicketStorageManager>((ref) {
  return TicketStorageManager(
    ticketStotagePageStateHolderNotifier:
        ref.read(ticketStotagePageStateHolder.notifier),
  );
});

class TicketStorageManager {
  @protected
  final TicketStotagePageStateHolderNotifier
      ticketStotagePageStateHolderNotifier;

  TicketStorageManager({
    required this.ticketStotagePageStateHolderNotifier,
  });

  void addTicketByUrl(String url) {
    final uri = Uri.parse(url);
    ticketStotagePageStateHolderNotifier.addTicket(
      Ticket(
        name: uri.host,
        url: uri,
        status: TicketStatus.loadingPending,
        createDate: DateTime.now(),
      ),
    );
  }
}
