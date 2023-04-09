import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:surf_flutter_study_jam_2023/features/ticket_storage/state_holders/add_ticket_bottom_sheet_state_holder.dart';

import 'package:surf_flutter_study_jam_2023/features/ticket_storage/state_holders/ticket_stotage_page_state_holder.dart';
import 'package:surf_flutter_study_jam_2023/models/ticket/ticket.dart';

import 'package:surf_flutter_study_jam_2023/models/ticket_status/ticket_status.dart';

final addTicketBottomSheetManager =
    Provider<AddTicketBottomSheetManager>((ref) {
  return AddTicketBottomSheetManager(
    addTicketBottomSheetStateHolderNotifier:
        ref.watch(addTicketBottomSheetStateHolder.notifier),
    ticketStotagePageStateHolder:
        ref.watch(ticketStotagePageStateHolder.notifier),
  );
});

class AddTicketBottomSheetManager {
  @protected
  final AddTicketBottomSheetStateHolderNotifier
      addTicketBottomSheetStateHolderNotifier;

  @protected
  final TicketStotagePageStateHolderNotifier ticketStotagePageStateHolder;

  AddTicketBottomSheetManager({
    required this.addTicketBottomSheetStateHolderNotifier,
    required this.ticketStotagePageStateHolder,
  });

  String? check(String url) {
    if (url.isEmpty) return 'Введите ссылку';
    if (!RegExp(r'^https?:\/\/[^\s]+\.pdf$').hasMatch(url)) {
      return 'Введите корректную ссылку на pdf файл';
    }
    return null;
  }

  bool validate(String url) {
    final error = check(url);
    if (error != null) {
      addTicketBottomSheetStateHolderNotifier.editErrorName(error);
      return false;
    }

    addTicketBottomSheetStateHolderNotifier.editErrorName(null);
    addTicketBottomSheetStateHolderNotifier.editAllowAdding(true);
    return true;
  }

  bool validateAllowAdding(String url) {
    final error = check(url);
    if (error != null) {
      addTicketBottomSheetStateHolderNotifier.editAllowAdding(false);
      return false;
    }

    addTicketBottomSheetStateHolderNotifier.editErrorName(null);
    addTicketBottomSheetStateHolderNotifier.editAllowAdding(true);
    return true;
  }

  void invalidate() async {
    await Future(() {});
    addTicketBottomSheetStateHolderNotifier.invalidate();
  }

  bool tryAddTicket(String url) {
    final isValid = validate(url);

    if (isValid) {
      final uri = Uri.parse(url);
      ticketStotagePageStateHolder.addTicket(
        Ticket(
          name: uri.host,
          url: url,
          status: TicketStatus.loadingPending,
          createDate: DateTime.now(),
        ),
      );
      invalidate();
      return true;
    }
    return false;
  }

  Future<void> trySetUrlFormClipboard() async {
    final data = await Clipboard.getData('text/plain');
    final url = data?.text;

    if (url == null) return;

    final isValid = check(url) == null;
    if (!isValid) return;

    addTicketBottomSheetStateHolderNotifier.setText(url);
  }
}
