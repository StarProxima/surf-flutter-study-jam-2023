import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_ticket_bottom_sheet_model.freezed.dart';

@freezed
class AddTicketBottomSheetModel with _$AddTicketBottomSheetModel {
  factory AddTicketBottomSheetModel({
    required String? errorText,
    required bool allowAdding,
  }) = _AddTicketBottomSheetModel;
}
