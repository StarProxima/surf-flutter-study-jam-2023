import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:surf_flutter_study_jam_2023/features/ticket_storage/models/add_ticket_bottom_sheet_model.dart';

final addTicketBottomSheetStateHolder = StateNotifierProvider<
    AddTicketBottomSheetStateHolderNotifier, AddTicketBottomSheetModel>((ref) {
  return AddTicketBottomSheetStateHolderNotifier(
    AddTicketBottomSheetModel(
      errorText: null,
      allowAdding: false,
    ),
  );
});

class AddTicketBottomSheetStateHolderNotifier
    extends StateNotifier<AddTicketBottomSheetModel> {
  AddTicketBottomSheetStateHolderNotifier(super.state);

  @override
  get state => super.state;

  void edit(AddTicketBottomSheetModel model) {
    state = model;
  }

  void editErrorName(String? errorName) {
    state = state.copyWith(
      errorText: errorName,
      allowAdding: state.allowAdding ? errorName == null : false,
    );
  }

  void editAllowAdding(bool allowAdding) {
    state = state.copyWith(
      allowAdding: state.errorText == null ? allowAdding : false,
    );
  }
}
