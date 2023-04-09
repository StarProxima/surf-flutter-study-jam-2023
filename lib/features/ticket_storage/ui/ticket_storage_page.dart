import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/add_ticket_bottom_sheet.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/empty_ticket_storage_event_page.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/ticket_card.dart';

import 'package:surf_flutter_study_jam_2023/features/ticket_storage/state_holders/ticket_stotage_page_state_holder.dart';

/// Экран “Хранения билетов”.
class TicketStoragePage extends ConsumerWidget {
  const TicketStoragePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tickets = ref
        .watch(ticketStotagePageStateHolder.select((value) => value.tickets));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Хранение билетов'),
      ),
      body: tickets.isEmpty
          ? const EmptyTicketStorageEventPage()
          : ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              itemCount: tickets.length,
              itemBuilder: (context, index) {
                final ticket = tickets[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: TicketCard(
                    ticket: ticket,
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showAddTicketBottomSheet(context),
        label: const Text('Добавить'),
      ),
    );
  }
}
