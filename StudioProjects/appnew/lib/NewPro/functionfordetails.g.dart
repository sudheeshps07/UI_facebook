// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'functionfordetails.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StudentsDetailsAdapter extends TypeAdapter<StudentsDetails> {
  @override
  final int typeId = 1;

  @override
  StudentsDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StudentsDetails(
      name: fields[0] as String,
      Age: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, StudentsDetails obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.Age);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StudentsDetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
