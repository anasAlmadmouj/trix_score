import 'package:trix_score/core/imports/app_imports.dart';

class ThirdKingdomResult extends StatelessWidget {
  const ThirdKingdomResult({super.key});

  @override
  Widget build(BuildContext context) {
    TeamsCubit cubit = TeamsCubit.get(context);
    return cubit.typeGame == complex
        ? CCKingdomResultWidget(
            resultColumnList: [
              CCResultColumn(
                firstRoundResult:
                    cubit.ccThirdKingdomData.firstRoundFirstTeam.toString(),
                secondRoundResult:
                    cubit.ccThirdKingdomData.secondRoundFirstTeam.toString(),
                totalRound: cubit.ccThirdKingdomData.totalFirstTeam.toString(),
                teamName: cubit.firstTeamName,
                color: Colors.black,
              ),
              CCResultColumn(
                firstRoundResult:
                    cubit.ccThirdKingdomData.firstRoundSecondTeam.toString(),
                secondRoundResult:
                    cubit.ccThirdKingdomData.secondRoundSecondTeam.toString(),
                totalRound: cubit.ccThirdKingdomData.totalSecondTeam.toString(),
                teamName: cubit.secondTeamName,
                color: Colors.black,
              ),
            ],
      firstRoundFirstTeamCase: cubit.ccThirdKingdomData.firstRoundFirstTeam,
      firstRoundSecondTeamCase: cubit.ccThirdKingdomData.firstRoundSecondTeam,
      secondRoundFirstTeamCase: cubit.ccThirdKingdomData.secondRoundFirstTeam,
      secondRoundSecondTeamCase: cubit.ccThirdKingdomData.secondRoundSecondTeam,
            firstRoundNumber: k3R1,
            secondRoundNumber: k3R2,
          )
        : TrixKingdomResultWidget(
            resultColumnList: [
              TrixResultColumn(
                complexRoundResult:
                cubit.trixThirdKingdomData.complexFirstTeam.toString(),
                trixRoundResult:
                cubit.trixThirdKingdomData.trixFirstTeam.toString(),
                totalRound: cubit.trixThirdKingdomData.totalFirstTeam.toString(),
                teamName: cubit.firstTeamName,
                color: Colors.black,
              ),
              TrixResultColumn(
                complexRoundResult:
                cubit.trixThirdKingdomData.complexSecondTeam.toString(),
                trixRoundResult:
                cubit.trixThirdKingdomData.trixSecondTeam.toString(),
                totalRound: cubit.trixThirdKingdomData.totalSecondTeam.toString(),
                teamName: cubit.secondTeamName,
                color: Colors.black,
              ),
            ],

      complexFirstTeamCase: cubit.trixThirdKingdomData.complexFirstTeam,
      complexSecondTeamCase: cubit.trixThirdKingdomData.complexSecondTeam,
      trixFirstTeamCase: cubit.trixThirdKingdomData.trixFirstTeam,
      trixSecondTeamCase: cubit.trixThirdKingdomData.trixSecondTeam,
            roundNumber: thirdKingdomTrix,
          );
  }
}
