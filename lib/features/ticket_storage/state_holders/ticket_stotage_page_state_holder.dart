import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

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
  TicketStotagePageStateHolderNotifier(super.state) {
    _load();
  }

  @override
  get state => super.state;

  void _load() async {
    final box = await Hive.openBox('tickets');
    // TicketApdapter to ticket
    final list = List<Ticket>.from(box.get('tickets') ?? []);
    state = state.copyWith(tickets: list);
  }

  void _save() {
    Hive.box('tickets').put('tickets', state.tickets);
  }

  void addTicket(Ticket ticket) {
    state = state.copyWith(
      tickets: [...state.tickets, ticket],
    );
    _save();
  }

  void editTicket(Ticket ticket) {
    state = state.copyWith(
      tickets:
          state.tickets.map((e) => e.url == ticket.url ? ticket : e).toList(),
    );
    _save();
  }

  void removeTicket(Ticket ticket) {
    state = state.copyWith(
      tickets: state.tickets.where((e) => e.url != ticket.url).toList(),
    );
    _save();
  }
}
