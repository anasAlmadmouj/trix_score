import 'package:trix_score/core/imports/app_imports.dart';

class CCKingdomResultWidget extends StatelessWidget {
  final List<Widget> resultColumnList;
  final String firstRoundNumber;
  final String secondRoundNumber;
  final int firstRoundFirstTeamCase;
  final int firstRoundSecondTeamCase;
  final int secondRoundFirstTeamCase;
  final int secondRoundSecondTeamCase;
  const CCKingdomResultWidget({
    required this.resultColumnList,
    required this.firstRoundNumber,
    required this.secondRoundNumber,
    super.key, required this.firstRoundFirstTeamCase,
    required this.firstRoundSecondTeamCase,
    required this.secondRoundFirstTeamCase,
    required this.secondRoundSecondTeamCase,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          10.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              resultColumnList[0],
              Container(
                height: 2,
                width: 30,
                color: Colors.grey,
                margin: const EdgeInsets.symmetric(vertical: 5),
              ),
              resultColumnList[1],
            ],
          ),
          20.height,
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               RoundButton(
                 firstTeamCase: firstRoundFirstTeamCase,
                secondTeamCase: firstRoundSecondTeamCase,
                roundNumber: firstRoundNumber,
                childText: AppLocalizations.of(context)!.firstRound,
              ),
              10.height,
               RoundButton(
                 firstTeamCase: secondRoundFirstTeamCase,
                secondTeamCase: secondRoundSecondTeamCase,
                roundNumber: secondRoundNumber,
                childText: AppLocalizations.of(context)!.secondRound,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
