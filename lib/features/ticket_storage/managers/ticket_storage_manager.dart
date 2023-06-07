import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

import 'package:surf_flutter_study_jam_2023/features/ticket_storage/state_holders/ticket_stotage_page_state_holder.dart';
import 'package:surf_flutter_study_jam_2023/main.dart';

import 'package:surf_flutter_study_jam_2023/models/ticket/ticket.dart';
import 'package:surf_flutter_study_jam_2023/models/ticket_status/ticket_status.dart';

import 'package:surf_flutter_study_jam_2023/data/dio_provider.dart';
import 'package:surf_flutter_study_jam_2023/models/loading_ticket_state/loading_ticket_state.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/state_holders/loading_ticket_provider.dart';

import 'package:surf_flutter_study_jam_2023/features/ticket_storage/state_holders/loading_ticket_cancel_token_provider.dart';

import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/pdf_viewer_page.dart';

final ticketStorageManager = Provider<TicketStorageManager>((ref) {
  return TicketStorageManager(
    ticketStotagePageStateHolderNotifier:
        ref.read(ticketStotagePageStateHolder.notifier),
    dio: ref.watch(dioProvider),
    getLoadingTicketStateNotifier: (ticket) {
      return ref.read(loadingTicketProvider(ticket).notifier);
    },
    getLoadingTicketCancelTokenNotifier: (ticket) {
      return ref.read(loadingTicketCancelTokenProvider(ticket).notifier);
    },
  );
});

class TicketStorageManager {
  @protected
  final TicketStotagePageStateHolderNotifier
      ticketStotagePageStateHolderNotifier;

  @protected
  final Dio dio;

  @protected
  final StateController<LoadingTicketState> Function(Ticket)
      getLoadingTicketStateNotifier;

  @protected
  final StateController<CancelToken?> Function(Ticket)
      getLoadingTicketCancelTokenNotifier;

  TicketStorageManager({
    required this.ticketStotagePageStateHolderNotifier,
    required this.dio,
    required this.getLoadingTicketStateNotifier,
    required this.getLoadingTicketCancelTokenNotifier,
  });

  void addTicketByUrl(String url) {
    final uri = Uri.parse(url);
    ticketStotagePageStateHolderNotifier.addTicket(
      Ticket(
        name: uri.host,
        url: url,
        status: TicketStatus.loadingPending,
        createDate: DateTime.now(),
      ),
    );
  }

  Future<void> downloadTicket(Ticket ticket) async {
    final uri = Uri.parse(ticket.url);
    final path = (await getApplicationDocumentsDirectory()).path + uri.path;

    final newTicket = ticket.copyWith(
      status: TicketStatus.loading,
    );

    ticketStotagePageStateHolderNotifier.editTicket(newTicket);

    final cancelToken = CancelToken();
    getLoadingTicketCancelTokenNotifier(newTicket).state = cancelToken;

    final notifer = getLoadingTicketStateNotifier(newTicket);
    try {
      await dio.downloadUri(
        uri,
        path,
        cancelToken: cancelToken,
        onReceiveProgress: (count, total) {
          if (count == total) {
            ticketStotagePageStateHolderNotifier.editTicket(
              ticket.copyWith(
                status: TicketStatus.saved,
              ),
            );
          }

          notifer.state = LoadingTicketState(
            received: count,
            total: total,
          );
        },
      );
    } catch (e) {
      notifer.state = LoadingTicketState(
        received: 0,
        total: 1,
      );
      final newTicket = ticket.copyWith(
        status: TicketStatus.loadingPending,
      );
      ticketStotagePageStateHolderNotifier.editTicket(newTicket);
    }
  }

  void pauseDownloadTicket(Ticket ticket) {
    getLoadingTicketCancelTokenNotifier(ticket).state?.cancel();
  }

  void openTicket(Ticket ticket) async {
    final uri = Uri.parse(ticket.url);
    final path = (await getApplicationDocumentsDirectory()).path + uri.path;
    final file = File(path);
    navigatorKey.currentState!.push(
      MaterialPageRoute(
        builder: (context) {
          return PdfViewerPage(
            ticket: ticket,
            file: file,
          );
        },
      ),
    );
  }

  void removeTicket(Ticket ticket) async {
    final uri = Uri.parse(ticket.url);
    final path = (await getApplicationDocumentsDirectory()).path + uri.path;
    final file = File(path);
    await file.delete();
    ticketStotagePageStateHolderNotifier.removeTicket(ticket);
  }
}
