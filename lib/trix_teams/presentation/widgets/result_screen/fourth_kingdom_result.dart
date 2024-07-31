import 'package:trix_score/core/imports/app_imports.dart';

class FourthKingdomResult extends StatelessWidget {
  const FourthKingdomResult({super.key});

  @override
  Widget build(BuildContext context) {
    TeamsCubit cubit = TeamsCubit.get(context);
    return cubit.typeGame == complex
        ? CCKingdomResultWidget(
            resultColumnList: [
              CCResultColumn(
                firstRoundResult:
                    cubit.ccFourthKingdomData.firstRoundFirstTeam.toString(),
                secondRoundResult:
                    cubit.ccFourthKingdomData.secondRoundFirstTeam.toString(),
                totalRound: cubit.ccFourthKingdomData.totalFirstTeam.toString(),
                teamName: cubit.firstTeamName,
                color: Colors.black,
              ),
              CCResultColumn(
                firstRoundResult:
                    cubit.ccFourthKingdomData.firstRoundSecondTeam.toString(),
                secondRoundResult:
                    cubit.ccFourthKingdomData.secondRoundSecondTeam.toString(),
                totalRound:
                    cubit.ccFourthKingdomData.totalSecondTeam.toString(),
                teamName: cubit.secondTeamName,
                color: Colors.black,
              ),
            ],

      firstRoundFirstTeamCase: cubit.ccFourthKingdomData.firstRoundFirstTeam,
      firstRoundSecondTeamCase: cubit.ccFourthKingdomData.firstRoundSecondTeam,
      secondRoundFirstTeamCase: cubit.ccFourthKingdomData.secondRoundFirstTeam,
      secondRoundSecondTeamCase: cubit.ccFourthKingdomData.secondRoundSecondTeam,
            firstRoundNumber: k4R1,
            secondRoundNumber: k4R2,
          )
        : TrixKingdomResultWidget(
            resultColumnList: [
              TrixResultColumn(
                complexRoundResult:
                cubit.trixFourthKingdomData.complexFirstTeam.toString(),
                trixRoundResult:
                cubit.trixFourthKingdomData.trixFirstTeam.toString(),
                totalRound: cubit.trixFourthKingdomData.totalFirstTeam.toString(),
                teamName: cubit.firstTeamName,
                color: Colors.black,
              ),
              TrixResultColumn(
                complexRoundResult:
                cubit.trixFourthKingdomData.complexSecondTeam.toString(),
                trixRoundResult:
                cubit.trixFourthKingdomData.trixSecondTeam.toString(),
                totalRound: cubit.trixFourthKingdomData.totalSecondTeam.toString(),
                teamName: cubit.secondTeamName,
                color: Colors.black,
              ),
            ],

      complexFirstTeamCase: cubit.trixFourthKingdomData.complexFirstTeam,
      complexSecondTeamCase: cubit.trixFourthKingdomData.complexSecondTeam,
      trixFirstTeamCase: cubit.trixFourthKingdomData.trixFirstTeam,
      trixSecondTeamCase: cubit.trixFourthKingdomData.trixSecondTeam,
            roundNumber: fourthKingdomTrix,
          );
  }
}
