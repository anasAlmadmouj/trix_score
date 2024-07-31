import 'package:trix_score/core/imports/app_imports.dart';

class FirstKingdomResult extends StatelessWidget {
  const FirstKingdomResult({super.key});

  @override
  Widget build(BuildContext context) {
    TeamsCubit cubit = TeamsCubit.get(context);
    return cubit.typeGame == complex
        ? CCKingdomResultWidget(
            resultColumnList: [
              CCResultColumn(
                firstRoundResult:
                    cubit.ccFirstKingdomData.firstRoundFirstTeam.toString(),
                secondRoundResult:
                    cubit.ccFirstKingdomData.secondRoundFirstTeam.toString(),
                totalRound: cubit.ccFirstKingdomData.totalFirstTeam.toString(),
                teamName: cubit.firstTeamName,
                color: Colors.black,
              ),
              CCResultColumn(
                firstRoundResult:
                    cubit.ccFirstKingdomData.firstRoundSecondTeam.toString(),
                secondRoundResult:
                    cubit.ccFirstKingdomData.secondRoundSecondTeam.toString(),
                totalRound: cubit.ccFirstKingdomData.totalSecondTeam.toString(),
                teamName: cubit.secondTeamName,
                color: Colors.black,
              ),
            ],
            firstRoundFirstTeamCase: cubit.ccFirstKingdomData.firstRoundFirstTeam,
            firstRoundSecondTeamCase: cubit.ccFirstKingdomData.firstRoundSecondTeam,
            secondRoundFirstTeamCase: cubit.ccFirstKingdomData.secondRoundFirstTeam,
            secondRoundSecondTeamCase: cubit.ccFirstKingdomData.secondRoundSecondTeam,
            firstRoundNumber: k1R1,
            secondRoundNumber: k1R2,
          )
        : TrixKingdomResultWidget(
            resultColumnList: [
              TrixResultColumn(
                complexRoundResult:
                    cubit.trixFirstKingdomData.complexFirstTeam.toString(),
                trixRoundResult:
                    cubit.trixFirstKingdomData.trixFirstTeam.toString(),
                totalRound: cubit.trixFirstKingdomData.totalFirstTeam.toString(),
                teamName: cubit.firstTeamName,
                color: Colors.black,
              ),
              TrixResultColumn(
                complexRoundResult:
                    cubit.trixFirstKingdomData.complexSecondTeam.toString(),
                trixRoundResult:
                    cubit.trixFirstKingdomData.trixSecondTeam.toString(),
                totalRound: cubit.trixFirstKingdomData.totalSecondTeam.toString(),
                teamName: cubit.secondTeamName,
                color: Colors.black,
              ),
            ],
            complexFirstTeamCase: cubit.trixFirstKingdomData.complexFirstTeam,
            complexSecondTeamCase: cubit.trixFirstKingdomData.complexSecondTeam,
            trixFirstTeamCase: cubit.trixFirstKingdomData.trixFirstTeam,
            trixSecondTeamCase: cubit.trixFirstKingdomData.trixSecondTeam,
            roundNumber: firstKingdomTrix,
          );
  }
}
