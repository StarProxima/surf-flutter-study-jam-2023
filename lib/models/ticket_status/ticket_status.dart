import 'package:hive/hive.dart';
part 'ticket_status.g.dart';

@HiveType(typeId: 1)
enum TicketStatus {
  @HiveField(0)
  loadingPending,
  @HiveField(1)
  loading,
  @HiveField(2)
  paused,
  @HiveField(3)
  saved,
}
