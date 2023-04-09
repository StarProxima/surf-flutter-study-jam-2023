import 'package:flutter/material.dart';

import 'package:surf_flutter_study_jam_2023/styles/app_colors/app_colors.dart';

extension StyleContextExtension on BuildContext {
  AppColors get colors => Theme.of(this).extension<AppColors>()!;
}
