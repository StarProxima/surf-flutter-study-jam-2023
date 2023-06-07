import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:surf_flutter_study_jam_2023/models/ticket/ticket.dart';

final loadingTicketCancelTokenProvider =
    StateProvider.family<CancelToken?, Ticket>((ref, ticket) {
  return null;
});
