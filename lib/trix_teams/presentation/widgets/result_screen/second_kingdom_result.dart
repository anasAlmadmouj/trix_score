import 'package:trix_score/core/imports/app_imports.dart';

class SecondKingdomResult extends StatelessWidget {
  const SecondKingdomResult({super.key});

  @override
  Widget build(BuildContext context) {
    TeamsCubit cubit = TeamsCubit.get(context);
    return cubit.typeGame == complex
        ? CCKingdomResultWidget(
            resultColumnList: [
              CCResultColumn(
                firstRoundResult:
                    cubit.ccSecondKingdomData.firstRoundFirstTeam.toString(),
                secondRoundResult:
                    cubit.ccSecondKingdomData.secondRoundFirstTeam.toString(),
                totalRound: cubit.ccSecondKingdomData.totalFirstTeam.toString(),
                teamName: cubit.firstTeamName,
                color: Colors.black,
              ),
              CCResultColumn(
                firstRoundResult:
                    cubit.ccSecondKingdomData.firstRoundSecondTeam.toString(),
                secondRoundResult:
                    cubit.ccSecondKingdomData.secondRoundSecondTeam.toString(),
                totalRound:
                    cubit.ccSecondKingdomData.totalSecondTeam.toString(),
                teamName: cubit.secondTeamName,
                color: Colors.black,
              ),
            ],
      firstRoundFirstTeamCase: cubit.ccSecondKingdomData.firstRoundFirstTeam,
      firstRoundSecondTeamCase: cubit.ccSecondKingdomData.firstRoundSecondTeam,
      secondRoundFirstTeamCase: cubit.ccSecondKingdomData.secondRoundFirstTeam,
      secondRoundSecondTeamCase: cubit.ccSecondKingdomData.secondRoundSecondTeam,
            firstRoundNumber: k2R1,
            secondRoundNumber: k2R2,
          )
        : TrixKingdomResultWidget(
            resultColumnList: [
              TrixResultColumn(
                complexRoundResult:
                cubit.trixSecondKingdomData.complexFirstTeam.toString(),
                trixRoundResult:
                cubit.trixSecondKingdomData.trixFirstTeam.toString(),
                totalRound: cubit.trixSecondKingdomData.totalFirstTeam.toString(),
                teamName: cubit.firstTeamName,
                color: Colors.black,
              ),
              TrixResultColumn(
                complexRoundResult:
                cubit.trixSecondKingdomData.complexSecondTeam.toString(),
                trixRoundResult:
                cubit.trixSecondKingdomData.trixSecondTeam.toString(),
                totalRound:
                cubit.trixSecondKingdomData.totalSecondTeam.toString(),
                teamName: cubit.secondTeamName,
                color: Colors.black,
              ),
            ],

      complexFirstTeamCase: cubit.trixSecondKingdomData.complexFirstTeam,
      complexSecondTeamCase: cubit.trixSecondKingdomData.complexSecondTeam,
      trixFirstTeamCase: cubit.trixSecondKingdomData.trixFirstTeam,
      trixSecondTeamCase: cubit.trixSecondKingdomData.trixSecondTeam,
            roundNumber: secondKingdomTrix,
          );
  }
}
