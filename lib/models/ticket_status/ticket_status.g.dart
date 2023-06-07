// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_status.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TicketStatusAdapter extends TypeAdapter<TicketStatus> {
  @override
  final int typeId = 1;

  @override
  TicketStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TicketStatus.loadingPending;
      case 1:
        return TicketStatus.loading;
      case 2:
        return TicketStatus.paused;
      case 3:
        return TicketStatus.saved;
      default:
        return TicketStatus.loadingPending;
    }
  }

  @override
  void write(BinaryWriter writer, TicketStatus obj) {
    switch (obj) {
      case TicketStatus.loadingPending:
        writer.writeByte(0);
        break;
      case TicketStatus.loading:
        writer.writeByte(1);
        break;
      case TicketStatus.paused:
        writer.writeByte(2);
        break;
      case TicketStatus.saved:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TicketStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
