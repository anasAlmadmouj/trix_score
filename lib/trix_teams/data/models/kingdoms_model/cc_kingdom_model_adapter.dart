

import 'package:trix_score/core/imports/app_imports.dart';

class CCKingdomModelAdapter extends TypeAdapter<CCKingdomModel> {
  @override
  final int typeId = 0; // Replace with a unique identifier for this type

  @override
  CCKingdomModel read(BinaryReader reader) {
    // Implement how to read the object from binary
    return CCKingdomModel(
      // Populate fields from binary
      firstRoundFirstTeam: reader.readInt(),
      firstRoundSecondTeam: reader.readInt(),
      secondRoundFirstTeam: reader.readInt(),
      secondRoundSecondTeam: reader.readInt(),
      totalFirstTeam: reader.readInt(),
      totalSecondTeam: reader.readInt(),
    );
  }

  @override
  void write(BinaryWriter writer, CCKingdomModel obj) {
    // Implement how to write the object to binary
    writer.writeInt(obj.firstRoundFirstTeam);
    writer.writeInt(obj.firstRoundSecondTeam);
    writer.writeInt(obj.secondRoundFirstTeam);
    writer.writeInt(obj.secondRoundSecondTeam);
    writer.writeInt(obj.totalFirstTeam);
    writer.writeInt(obj.totalSecondTeam);
  }
}
