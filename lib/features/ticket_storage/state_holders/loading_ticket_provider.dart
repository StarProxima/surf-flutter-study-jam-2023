import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:surf_flutter_study_jam_2023/models/loading_ticket_state/loading_ticket_state.dart';
import 'package:surf_flutter_study_jam_2023/models/ticket/ticket.dart';

import 'package:surf_flutter_study_jam_2023/models/ticket_status/ticket_status.dart';

final loadingTicketProvider =
    StateProvider.family<LoadingTicketState, Ticket>((ref, ticket) {
  return LoadingTicketState(
    received: ticket.status == TicketStatus.saved ? 1 : 0,
    total: 1,
  );
});
