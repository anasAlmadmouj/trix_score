

import 'package:trix_score/core/imports/app_imports.dart';

class TrixKingdomModelAdapter extends TypeAdapter<TrixKingdomModel> {
  @override
  final int typeId = 1; // Replace with a unique identifier for this type

  @override
  TrixKingdomModel read(BinaryReader reader) {
    // Implement how to read the object from binary
    return TrixKingdomModel(
      // Populate fields from binary
      complexFirstTeam: reader.readInt(),
      complexSecondTeam: reader.readInt(),
      trixFirstTeam: reader.readInt(),
      trixSecondTeam: reader.readInt(),
      totalFirstTeam: reader.readInt(),
      totalSecondTeam: reader.readInt(),
    );
  }

  @override
  void write(BinaryWriter writer, TrixKingdomModel obj) {
    // Implement how to write the object to binary
    writer.writeInt(obj.complexFirstTeam);
    writer.writeInt(obj.complexSecondTeam);
    writer.writeInt(obj.trixFirstTeam);
    writer.writeInt(obj.trixSecondTeam);
    writer.writeInt(obj.totalFirstTeam);
    writer.writeInt(obj.totalSecondTeam);
  }
}
