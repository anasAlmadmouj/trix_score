import 'package:trix_score/core/imports/app_imports.dart';

class ArchiveDataModelAdapter extends TypeAdapter<ArchiveDataModel> {
  @override
  final int typeId = 2; // Replace with a unique identifier for this type

  @override
  ArchiveDataModel read(BinaryReader reader) {
    // Implement how to read the object from binary
    return ArchiveDataModel(
      // Populate fields from binary
      firstKingdomFirstTeamFirstRound: reader.readInt(),
      firstKingdomFirstTeamSecondRound: reader.readInt(),
      firstKingdomSecondTeamFirstRound: reader.readInt(),
      firstKingdomSecondTeamSecondRound: reader.readInt(),
      ccFirstKingdomTotalFirstTeam: reader.readInt(),
      ccFirstKingdomTotalSecondTeam: reader.readInt(),
      secondKingdomFirstTeamFirstRound: reader.readInt(),
      secondKingdomFirstTeamSecondRound: reader.readInt(),
      secondKingdomSecondTeamFirstRound: reader.readInt(),
      secondKingdomSecondTeamSecondRound: reader.readInt(),
      ccSecondKingdomTotalFirstTeam: reader.readInt(),
      ccSecondKingdomTotalSecondTeam: reader.readInt(),
      thirdKingdomFirstTeamFirstRound: reader.readInt(),
      thirdKingdomFirstTeamSecondRound: reader.readInt(),
      thirdKingdomSecondTeamFirstRound: reader.readInt(),
      thirdKingdomSecondTeamSecondRound: reader.readInt(),
      ccThirdKingdomTotalFirstTeam: reader.readInt(),
      ccThirdKingdomTotalSecondTeam: reader.readInt(),
      fourthKingdomFirstTeamFirstRound: reader.readInt(),
      fourthKingdomFirstTeamSecondRound: reader.readInt(),
      fourthKingdomSecondTeamFirstRound: reader.readInt(),
      fourthKingdomSecondTeamSecondRound: reader.readInt(),
      ccFourthKingdomTotalFirstTeam: reader.readInt(),
      ccFourthKingdomTotalSecondTeam: reader.readInt(),
      firstKingdomFirstTeamComplex: reader.readInt(),
      firstKingdomFirstTeamTrix: reader.readInt(),
      firstKingdomSecondTeamComplex: reader.readInt(),
      firstKingdomSecondTeamTrix: reader.readInt(),
      trixFirstKingdomTotalFirstTeam: reader.readInt(),
      trixFirstKingdomTotalSecondTeam: reader.readInt(),
      secondKingdomFirstTeamComplex: reader.readInt(),
      secondKingdomFirstTeamTrix: reader.readInt(),
      secondKingdomSecondTeamComplex: reader.readInt(),
      secondKingdomSecondTeamTrix: reader.readInt(),
      trixSecondKingdomTotalFirstTeam: reader.readInt(),
      trixSecondKingdomTotalSecondTeam: reader.readInt(),
      thirdKingdomFirstTeamComplex: reader.readInt(),
      thirdKingdomFirstTeamTrix: reader.readInt(),
      thirdKingdomSecondTeamComplex: reader.readInt(),
      thirdKingdomSecondTeamTrix: reader.readInt(),
      trixThirdKingdomTotalFirstTeam: reader.readInt(),
      trixThirdKingdomTotalSecondTeam: reader.readInt(),
      fourthKingdomFirstTeamComplex: reader.readInt(),
      fourthKingdomFirstTeamTrix: reader.readInt(),
      fourthKingdomSecondTeamComplex: reader.readInt(),
      fourthKingdomSecondTeamTrix: reader.readInt(),
      trixFourthKingdomTotalFirstTeam: reader.readInt(),
      trixFourthKingdomTotalSecondTeam: reader.readInt(),
      totalFirstTeam: reader.readInt(),
      totalSecondTeam: reader.readInt(),
      firstTeamName: reader.readString(),
      secondTeamName: reader.readString(),
      winnerName: reader.readString(),
      loserName: reader.readString(),
      dateOfGame: reader.readString(),
      typeGame: reader.readString(),
    );
  }

  @override
  void write(BinaryWriter writer, ArchiveDataModel obj) {
    // Implement how to write the object to binary
    writer.writeInt(obj.firstKingdomFirstTeamFirstRound);
    writer.writeInt(obj.firstKingdomFirstTeamSecondRound);
    writer.writeInt(obj.firstKingdomSecondTeamFirstRound);
    writer.writeInt(obj.firstKingdomSecondTeamSecondRound);
    writer.writeInt(obj.ccFirstKingdomTotalFirstTeam);
    writer.writeInt(obj.ccFirstKingdomTotalSecondTeam);
    writer.writeInt(obj.secondKingdomFirstTeamFirstRound);
    writer.writeInt(obj.secondKingdomFirstTeamSecondRound);
    writer.writeInt(obj.secondKingdomSecondTeamFirstRound);
    writer.writeInt(obj.secondKingdomSecondTeamSecondRound);
    writer.writeInt(obj.ccSecondKingdomTotalFirstTeam);
    writer.writeInt(obj.ccSecondKingdomTotalSecondTeam);
    writer.writeInt(obj.thirdKingdomFirstTeamFirstRound);
    writer.writeInt(obj.thirdKingdomFirstTeamSecondRound);
    writer.writeInt(obj.thirdKingdomSecondTeamFirstRound);
    writer.writeInt(obj.thirdKingdomSecondTeamSecondRound);
    writer.writeInt(obj.ccThirdKingdomTotalFirstTeam);
    writer.writeInt(obj.ccThirdKingdomTotalSecondTeam);
    writer.writeInt(obj.fourthKingdomFirstTeamFirstRound);
    writer.writeInt(obj.fourthKingdomFirstTeamSecondRound);
    writer.writeInt(obj.fourthKingdomSecondTeamFirstRound);
    writer.writeInt(obj.fourthKingdomSecondTeamSecondRound);
    writer.writeInt(obj.ccFourthKingdomTotalFirstTeam);
    writer.writeInt(obj.ccFourthKingdomTotalSecondTeam);
    writer.writeInt(obj.firstKingdomFirstTeamComplex);
    writer.writeInt(obj.firstKingdomFirstTeamTrix);
    writer.writeInt(obj.firstKingdomSecondTeamComplex);
    writer.writeInt(obj.firstKingdomSecondTeamTrix);
    writer.writeInt(obj.trixFirstKingdomTotalFirstTeam);
    writer.writeInt(obj.trixFirstKingdomTotalSecondTeam);
    writer.writeInt(obj.secondKingdomFirstTeamComplex);
    writer.writeInt(obj.secondKingdomFirstTeamTrix);
    writer.writeInt(obj.secondKingdomSecondTeamComplex);
    writer.writeInt(obj.secondKingdomSecondTeamTrix);
    writer.writeInt(obj.trixSecondKingdomTotalFirstTeam);
    writer.writeInt(obj.trixSecondKingdomTotalSecondTeam);
    writer.writeInt(obj.thirdKingdomFirstTeamComplex);
    writer.writeInt(obj.thirdKingdomFirstTeamTrix);
    writer.writeInt(obj.thirdKingdomSecondTeamComplex);
    writer.writeInt(obj.thirdKingdomSecondTeamTrix);
    writer.writeInt(obj.trixThirdKingdomTotalFirstTeam);
    writer.writeInt(obj.trixThirdKingdomTotalSecondTeam);
    writer.writeInt(obj.fourthKingdomFirstTeamComplex);
    writer.writeInt(obj.fourthKingdomFirstTeamTrix);
    writer.writeInt(obj.fourthKingdomSecondTeamComplex);
    writer.writeInt(obj.fourthKingdomSecondTeamTrix);
    writer.writeInt(obj.trixFourthKingdomTotalFirstTeam);
    writer.writeInt(obj.trixFourthKingdomTotalSecondTeam);
    writer.writeInt(obj.totalFirstTeam);
    writer.writeInt(obj.totalSecondTeam);
    writer.writeString(obj.firstTeamName);
    writer.writeString(obj.secondTeamName);
    writer.writeString(obj.winnerName);
    writer.writeString(obj.loserName);
    writer.writeString(obj.dateOfGame);
    writer.writeString(obj.typeGame);
  }
}
