import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:surf_flutter_study_jam_2023/features/ticket_storage/state_holders/add_ticket_bottom_sheet_state_holder.dart';

import 'package:surf_flutter_study_jam_2023/features/ticket_storage/models/add_ticket_bottom_sheet_model.dart';

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

  void validate(String url) {
    if (url.isEmpty) {
      addTicketBottomSheetStateHolderNotifier.editErrorName('Введите url');
      return;
    }
    // Это uri
    if (Uri.tryParse(url) == null) {
      addTicketBottomSheetStateHolderNotifier
          .editErrorName('Введите корректный url');
      return;
    }
    // uri заканчивается на .pdf
    final path = Uri.parse(url).path;
    if (!path.endsWith('.pdf')) {
      addTicketBottomSheetStateHolderNotifier
          .editErrorName('Файл должен быть в формате .pdf');
      return;
    }

    addTicketBottomSheetStateHolderNotifier.editErrorName(null);
    addTicketBottomSheetStateHolderNotifier.editAllowAdding(true);
  }

  void invalidate() async {
    await Future(() {});
    addTicketBottomSheetStateHolderNotifier.edit(
      AddTicketBottomSheetModel(
        errorText: null,
        allowAdding: false,
      ),
    );
  }

  bool tryAddTicket(String url) {
    validate(url);

    if (addTicketBottomSheetStateHolderNotifier.state.allowAdding) {
      final uri = Uri.parse(url);
      ticketStotagePageStateHolder.addTicket(
        Ticket(
          name: uri.host,
          url: uri,
          status: TicketStatus.loadingPending,
          createDate: DateTime.now(),
        ),
      );
      invalidate();
      return true;
    }
    return false;
  }
}
