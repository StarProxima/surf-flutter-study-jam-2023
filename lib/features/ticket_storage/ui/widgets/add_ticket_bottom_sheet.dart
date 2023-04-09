import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:surf_flutter_study_jam_2023/styles/style_context_extenstion.dart';

import 'package:surf_flutter_study_jam_2023/features/ticket_storage/managers/add_ticket_bottom_sheet_manager.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/state_holders/add_ticket_bottom_sheet_state_holder.dart';

Future<T?> showAddTicketBottomSheet<T>(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return Consumer(
        builder: (context, ref, _) {
          final manager = ref.watch(addTicketBottomSheetManager);
          manager.trySetUrlFormClipboard();
          return const AddTicketBottomSheet();
        },
      );
    },
  );
}

class AddTicketBottomSheet extends ConsumerStatefulWidget {
  const AddTicketBottomSheet({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AddTicketBottomSheetState();
}

class _AddTicketBottomSheetState extends ConsumerState<AddTicketBottomSheet> {
  late final manager = ref.watch(addTicketBottomSheetManager);

  @override
  void dispose() {
    manager.invalidate();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(addTicketBottomSheetStateHolder);

    void tryAdd() {
      final successAdd = manager.tryAddTicket(state.controller.text);

      if (successAdd) {
        state.focusNode.unfocus();
        Navigator.of(context).pop();
      }
    }

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
                    controller: state.controller,
                    focusNode: state.focusNode,
                    onChanged: manager.validateAllowAdding,
                    onSubmitted: manager.validate,
                    onEditingComplete: tryAdd,
                    keyboardType: TextInputType.url,
                    decoration: InputDecoration(
                      label: const Text('Введите url'),
                      errorText: state.errorText,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: state.allowAdding
                          ? context.colors.primary
                          : context.colors.text,
                      foregroundColor: context.colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                    ),
                    onPressed: tryAdd,
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
