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
          manager.invalidate();
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
  late final TextEditingController controller;
  late final FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    focusNode = FocusNode();
  }

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final manager = ref.watch(addTicketBottomSheetManager);
    final state = ref.watch(addTicketBottomSheetStateHolder);

    void tryAdd() {
      final successAdd = manager.tryAddTicket(controller.text);

      if (successAdd) {
        focusNode.unfocus();
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
                    controller: controller,
                    focusNode: focusNode,
                    onSubmitted: manager.validate,
                    onEditingComplete: tryAdd,
                    decoration: InputDecoration(
                      label: const Text('Введите url'),
                      errorText: state.errorText,
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: context.colors.primary,
                          width: 2,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: context.colors.primary,
                          width: 2,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                      ),
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
