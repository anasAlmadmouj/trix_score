
import 'package:trix_score/core/imports/app_imports.dart';

class ArchiveDataEntity extends Equatable{
  int firstKingdomFirstTeamFirstRound;
  int firstKingdomFirstTeamSecondRound;
  int firstKingdomSecondTeamFirstRound;
  int firstKingdomSecondTeamSecondRound;
  int ccFirstKingdomTotalFirstTeam;
  int ccFirstKingdomTotalSecondTeam;
  int secondKingdomFirstTeamFirstRound;
  int secondKingdomFirstTeamSecondRound;
  int secondKingdomSecondTeamFirstRound;
  int secondKingdomSecondTeamSecondRound;
  int ccSecondKingdomTotalFirstTeam;
  int ccSecondKingdomTotalSecondTeam;
  int thirdKingdomFirstTeamFirstRound;
  int thirdKingdomFirstTeamSecondRound;
  int thirdKingdomSecondTeamFirstRound;
  int thirdKingdomSecondTeamSecondRound;
  int ccThirdKingdomTotalFirstTeam;
  int ccThirdKingdomTotalSecondTeam;
  int fourthKingdomFirstTeamFirstRound;
  int fourthKingdomFirstTeamSecondRound;
  int fourthKingdomSecondTeamFirstRound;
  int fourthKingdomSecondTeamSecondRound;
  int ccFourthKingdomTotalFirstTeam;
  int ccFourthKingdomTotalSecondTeam;
  int firstKingdomFirstTeamComplex;
  int firstKingdomFirstTeamTrix;
  int firstKingdomSecondTeamComplex;
  int firstKingdomSecondTeamTrix;
  int trixFirstKingdomTotalFirstTeam;
  int trixFirstKingdomTotalSecondTeam;
  int secondKingdomFirstTeamComplex;
  int secondKingdomFirstTeamTrix;
  int secondKingdomSecondTeamComplex;
  int secondKingdomSecondTeamTrix;
  int trixSecondKingdomTotalFirstTeam;
  int trixSecondKingdomTotalSecondTeam;
  int thirdKingdomFirstTeamComplex;
  int thirdKingdomFirstTeamTrix;
  int thirdKingdomSecondTeamComplex;
  int thirdKingdomSecondTeamTrix;
  int trixThirdKingdomTotalFirstTeam;
  int trixThirdKingdomTotalSecondTeam;
  int fourthKingdomFirstTeamComplex;
  int fourthKingdomFirstTeamTrix;
  int fourthKingdomSecondTeamComplex;
  int fourthKingdomSecondTeamTrix;
  int trixFourthKingdomTotalFirstTeam;
  int trixFourthKingdomTotalSecondTeam;
  String firstTeamName;
  String secondTeamName;
  String winnerName;
  String loserName;
  String dateOfGame;
  String typeGame;
  int totalFirstTeam;
  int totalSecondTeam;

  ArchiveDataEntity(
      {
      required this.firstKingdomFirstTeamFirstRound,
      required this.firstKingdomFirstTeamSecondRound,
      required this.firstKingdomSecondTeamFirstRound,
      required this.firstKingdomSecondTeamSecondRound,
      required this.ccFirstKingdomTotalFirstTeam,
      required this.ccFirstKingdomTotalSecondTeam,
      required this.secondKingdomFirstTeamFirstRound,
      required this.secondKingdomFirstTeamSecondRound,
      required this.secondKingdomSecondTeamFirstRound,
      required this.secondKingdomSecondTeamSecondRound,
      required this.ccSecondKingdomTotalFirstTeam,
      required this.ccSecondKingdomTotalSecondTeam,
      required this.thirdKingdomFirstTeamFirstRound,
      required this.thirdKingdomFirstTeamSecondRound,
      required this.thirdKingdomSecondTeamFirstRound,
      required this.thirdKingdomSecondTeamSecondRound,
      required this.ccThirdKingdomTotalFirstTeam,
      required this.ccThirdKingdomTotalSecondTeam,
      required this.fourthKingdomFirstTeamFirstRound,
      required this.fourthKingdomFirstTeamSecondRound,
      required this.fourthKingdomSecondTeamFirstRound,
      required this.fourthKingdomSecondTeamSecondRound,
      required this.ccFourthKingdomTotalFirstTeam,
      required this.ccFourthKingdomTotalSecondTeam,
      required this.firstKingdomFirstTeamComplex,
      required this.firstKingdomFirstTeamTrix,
      required this.firstKingdomSecondTeamComplex,
      required this.firstKingdomSecondTeamTrix,
      required this.trixFirstKingdomTotalFirstTeam,
      required this.trixFirstKingdomTotalSecondTeam,
      required this.secondKingdomFirstTeamComplex,
      required this.secondKingdomFirstTeamTrix,
      required this.secondKingdomSecondTeamComplex,
      required this.secondKingdomSecondTeamTrix,
      required this.trixSecondKingdomTotalFirstTeam,
      required this.trixSecondKingdomTotalSecondTeam,
      required this.thirdKingdomFirstTeamComplex,
      required this.thirdKingdomFirstTeamTrix,
      required this.thirdKingdomSecondTeamComplex,
      required this.thirdKingdomSecondTeamTrix,
      required this.trixThirdKingdomTotalFirstTeam,
      required this.trixFourthKingdomTotalSecondTeam,
      required this.fourthKingdomFirstTeamComplex,
      required this.fourthKingdomFirstTeamTrix,
      required this.fourthKingdomSecondTeamComplex,
      required this.fourthKingdomSecondTeamTrix,
      required this.trixFourthKingdomTotalFirstTeam,
      required this.trixThirdKingdomTotalSecondTeam,
      required this.secondTeamName,
      required this.firstTeamName,
      required this.dateOfGame,
      required this.winnerName,
      required this.loserName,
      required this.typeGame,
      required this.totalFirstTeam,
      required this.totalSecondTeam,
      });

  @override
  // TODO: implement props
  List<Object?> get props => [
    firstKingdomFirstTeamFirstRound,
    firstKingdomFirstTeamSecondRound,
    firstKingdomSecondTeamFirstRound,
    firstKingdomSecondTeamSecondRound,
    secondKingdomFirstTeamFirstRound,
    secondKingdomFirstTeamSecondRound,
    secondKingdomSecondTeamFirstRound,
    secondKingdomSecondTeamSecondRound,
    thirdKingdomFirstTeamFirstRound,
    thirdKingdomFirstTeamSecondRound,
    thirdKingdomSecondTeamFirstRound,
    thirdKingdomSecondTeamSecondRound,
    fourthKingdomFirstTeamFirstRound,
    fourthKingdomFirstTeamSecondRound,
    fourthKingdomSecondTeamFirstRound,
    fourthKingdomSecondTeamSecondRound,
    firstKingdomFirstTeamComplex,
    firstKingdomFirstTeamTrix,
    firstKingdomSecondTeamComplex,
    firstKingdomSecondTeamTrix,
    secondKingdomFirstTeamComplex,
    secondKingdomFirstTeamTrix,
    secondKingdomSecondTeamComplex,
    secondKingdomSecondTeamTrix,
    thirdKingdomFirstTeamComplex,
    thirdKingdomFirstTeamTrix,
    thirdKingdomSecondTeamComplex,
    thirdKingdomSecondTeamTrix,
    fourthKingdomFirstTeamComplex,
    fourthKingdomFirstTeamTrix,
    fourthKingdomSecondTeamComplex,
    fourthKingdomSecondTeamTrix,
    ccFirstKingdomTotalFirstTeam,
    ccFirstKingdomTotalSecondTeam,
    ccSecondKingdomTotalFirstTeam,
    ccSecondKingdomTotalSecondTeam,
    ccThirdKingdomTotalFirstTeam,
    ccThirdKingdomTotalSecondTeam,
    ccFourthKingdomTotalFirstTeam,
    ccFourthKingdomTotalSecondTeam,
    trixFirstKingdomTotalFirstTeam,
    trixFirstKingdomTotalSecondTeam,
    trixSecondKingdomTotalFirstTeam,
    trixSecondKingdomTotalSecondTeam,
    trixThirdKingdomTotalFirstTeam,
    trixThirdKingdomTotalSecondTeam,
    trixFourthKingdomTotalFirstTeam,
    trixFourthKingdomTotalSecondTeam,
    firstTeamName,
    secondTeamName,
    winnerName,
    loserName,
    dateOfGame,
    typeGame,
    totalFirstTeam,
    totalSecondTeam,
  ];
}