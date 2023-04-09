import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:surf_flutter_study_jam_2023/styles/style_context_extenstion.dart';

import 'package:surf_flutter_study_jam_2023/features/ticket_storage/state_holders/ticket_stotage_page_state_holder.dart';

import 'package:surf_flutter_study_jam_2023/models/ticket/ticket.dart';

Future<T?> showAddTicketBottomSheet<T>(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return const AddTicketBottomSheet();
    },
  );
}

class AddTicketBottomSheet extends ConsumerWidget {
  const AddTicketBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          children: [
            const SizedBox(height: 8),
            Container(
              height: 4,
              width: 36,
              decoration: BoxDecoration(
                color: context.colors.text,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: Column(
                children: [
                  TextField(
                    focusNode: FocusNode(),
                    decoration: InputDecoration(
                      label: const Text('Введите url'),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: context.colors.primary,
                          width: 2,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: context.colors.primary,
                          width: 2,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: context.colors.primary,
                      disabledBackgroundColor: context.colors.text,
                      foregroundColor: context.colors.white,
                      disabledForegroundColor: context.colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                    ),
                    onPressed: () {
                      ref.read(ticketStotagePageStateHolder.notifier).addTicket(
                            Ticket(
                              name: 'Ticket 1',
                              url: Uri.parse(
                                'https://example.com/api/fetch?limit=10,20,30&max=100',
                              ),
                            ),
                          );
                      Navigator.of(context).pop();
                    },
                    child: const Text('Добавить'),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
