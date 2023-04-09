import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/empty_ticket_storage_event_page.dart';

/// Экран “Хранения билетов”.
class TicketStoragePage extends StatelessWidget {
  const TicketStoragePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Хранение билетов'),
      ),
      body: const EmptyTicketStorageEventPage(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Добавить'),
      ),
    );
  }
}
