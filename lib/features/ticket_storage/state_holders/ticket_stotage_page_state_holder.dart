import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:surf_flutter_study_jam_2023/features/ticket_storage/models/ticket_storage_page_model.dart';

import 'package:surf_flutter_study_jam_2023/models/ticket/ticket.dart';

final ticketStotagePageStateHolder = StateNotifierProvider<
    TicketStotagePageStateHolderNotifier, TicketStoragePageModel>((ref) {
  return TicketStotagePageStateHolderNotifier(
    TicketStoragePageModel(
      tickets: [],
    ),
  );
});

class TicketStotagePageStateHolderNotifier
    extends StateNotifier<TicketStoragePageModel> {
  TicketStotagePageStateHolderNotifier(super.state);

  @override
  get state => super.state;

  void edit(TicketStoragePageModel model) {
    state = model;
  }

  void addTicket(Ticket ticket) {
    state = state.copyWith(
      tickets: [...state.tickets, ticket],
    );
  }

  void editTicket(Ticket ticket) {
    state = state.copyWith(
      tickets:
          state.tickets.map((e) => e.url == ticket.url ? ticket : e).toList(),
    );
  }
}
