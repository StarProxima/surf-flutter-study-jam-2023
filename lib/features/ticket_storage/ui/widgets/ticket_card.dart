import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:surf_flutter_study_jam_2023/models/ticket/ticket.dart';
import 'package:surf_flutter_study_jam_2023/styles/style_context_extenstion.dart';

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
              Container(
                height: 4,
                color: const Color(0xFFe7e0ec),
              ),
              Text(
                'Ожидает начала загрузки',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: context.colors.text,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
        Icon(
          Icons.cloud_done_outlined,
          color: context.colors.primary,
        ),
      ],
    );
  }
}
