import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:surf_flutter_study_jam_2023/features/ticket_storage/models/add_ticket_bottom_sheet_model.dart';

final addTicketBottomSheetStateHolder = StateNotifierProvider<
    AddTicketBottomSheetStateHolderNotifier, AddTicketBottomSheetModel>((ref) {
  return AddTicketBottomSheetStateHolderNotifier(
    AddTicketBottomSheetModel(
      errorText: null,
      allowAdding: false,
      controller: TextEditingController(),
      focusNode: FocusNode(),
    ),
  );
});

class AddTicketBottomSheetStateHolderNotifier
    extends StateNotifier<AddTicketBottomSheetModel> {
  AddTicketBottomSheetStateHolderNotifier(super.state);

  @override
  get state => super.state;

  void invalidate() {
    state.controller.dispose();
    state.focusNode.dispose();

    state = AddTicketBottomSheetModel(
      errorText: null,
      allowAdding: false,
      controller: TextEditingController(),
      focusNode: FocusNode(),
    );
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

  void setText(String text) {
    state.controller.text = text;
    state.controller.selection = TextSelection.fromPosition(
      TextPosition(offset: state.controller.text.length),
    );
  }
}
