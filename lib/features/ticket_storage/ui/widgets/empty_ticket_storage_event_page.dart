import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EmptyTicketStorageEventPage extends ConsumerWidget {
  const EmptyTicketStorageEventPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Здесь пока ничего нет'),
        ],
      ),
    );
  }
}
