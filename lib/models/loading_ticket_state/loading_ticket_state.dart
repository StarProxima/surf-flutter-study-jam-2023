import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loading_ticket_state.freezed.dart';

@freezed
class LoadingTicketState with _$LoadingTicketState {
  factory LoadingTicketState({
    required int received,
    required int total,
  }) = _LoadingTicketState;
}
