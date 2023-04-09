import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/ticket_storage_page.dart';
import 'package:surf_flutter_study_jam_2023/models/ticket/ticket.dart';
import 'package:surf_flutter_study_jam_2023/styles/app_colors/app_colors.dart';
import 'package:surf_flutter_study_jam_2023/styles/app_theme.dart';

import 'package:surf_flutter_study_jam_2023/models/ticket_status/ticket_status.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  Hive.registerAdapter(TicketAdapter());
  Hive.registerAdapter(TicketStatusAdapter());

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appColors = AppColors.light;
    return MaterialApp(
      title: 'Surf Flutter Study Jam 2023',
      theme: AppTheme.themeByStyles(colors: appColors),
      home: const TicketStoragePage(),
    );
  }
}
