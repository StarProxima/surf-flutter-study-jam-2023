import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:surf_flutter_study_jam_2023/models/ticket/ticket.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewerPage extends ConsumerWidget {
  final Ticket ticket;
  final File file;
  const PdfViewerPage({super.key, required this.ticket, required this.file});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ticket.name),
      ),
      body: SfPdfViewer.file(file),
    );
  }
}
