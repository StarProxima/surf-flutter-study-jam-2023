import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:surf_flutter_study_jam_2023/styles/style_context_extenstion.dart';

class TicketCard extends ConsumerWidget {
  const TicketCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                'Ticket',
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
