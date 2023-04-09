import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/managers/ticket_storage_manager.dart';
import 'package:surf_flutter_study_jam_2023/models/ticket/ticket.dart';
import 'package:surf_flutter_study_jam_2023/models/ticket_status/ticket_status.dart';
import 'package:surf_flutter_study_jam_2023/styles/style_context_extenstion.dart';

import 'package:surf_flutter_study_jam_2023/features/ticket_storage/state_holders/loading_ticket_provider.dart';

final _ticketCardTicket = Provider<Ticket>((ref) {
  return throw UnimplementedError();
});

class TicketCard extends ConsumerWidget {
  final Ticket ticket;

  const TicketCard({
    super.key,
    required this.ticket,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ProviderScope позволяет дать каждой карточке свою модель и избежать пересборки
    return ProviderScope(
      overrides: [_ticketCardTicket.overrideWithValue(ticket)],
      child: const _TicketCard(),
    );
  }
}

class _TicketCard extends ConsumerWidget {
  const _TicketCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ticket = ref.watch(_ticketCardTicket);

    final manager = ref.watch(ticketStorageManager);

    final status = ticket.status;

    return Row(
      children: [
        Icon(
          Icons.airplane_ticket_outlined,
          color: context.colors.text,
        ),
        const SizedBox(width: 24),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ticket.name,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: context.colors.primary,
                ),
              ),
              const SizedBox(height: 4),
              Consumer(
                builder: (context, ref, _) {
                  final loadingState = ref.watch(loadingTicketProvider(ticket));

                  double value = loadingState.received / loadingState.total;

                  final String statusText;

                  if (value == 0) {
                    statusText = 'Ожидает начала загрузки';
                  } else if (value == 1) {
                    statusText = 'Файл загружен';
                  } else {
                    // Отображение в мегабайтах
                    final rec = (loadingState.received / 1024 / 1024)
                        .toStringAsFixed(2);
                    final tot =
                        (loadingState.total / 1024 / 1024).toStringAsFixed(2);
                    statusText = 'Загружается $rec / $tot мб.';
                  }

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LinearProgressIndicator(
                        value: value,
                        color: context.colors.primary,
                        backgroundColor: context.colors.text.withOpacity(0.3),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        statusText,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: context.colors.text,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
        IconButton(
          onPressed: () {
            if (status == TicketStatus.loadingPending) {
              manager.downloadTicket(ticket);
            } else if (status == TicketStatus.loading) {
              manager.pauseDownloadTicket(ticket);
            }
          },
          icon: status == TicketStatus.loadingPending
              ? Icon(
                  Icons.cloud_download_outlined,
                  color: context.colors.primary,
                )
              : status == TicketStatus.loading
                  ? Icon(
                      Icons.pause_circle_outline,
                      color: context.colors.primary,
                    )
                  : Icon(
                      Icons.cloud_done,
                      color: context.colors.primary,
                    ),
        ),
      ],
    );
  }
}
