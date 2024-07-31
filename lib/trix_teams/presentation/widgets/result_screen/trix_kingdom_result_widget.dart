import 'package:trix_score/core/imports/app_imports.dart';

class TrixKingdomResultWidget extends StatelessWidget {
  final List<Widget> resultColumnList;
  final String roundNumber;
  final int complexFirstTeamCase;
  final int complexSecondTeamCase;
  final int trixFirstTeamCase;
  final int trixSecondTeamCase;
  const TrixKingdomResultWidget({
    required this.resultColumnList,
    required this.roundNumber,
    super.key,
    required this.complexFirstTeamCase,
    required this.complexSecondTeamCase,
    required this.trixFirstTeamCase,
    required this.trixSecondTeamCase,
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
                firstTeamCase: complexFirstTeamCase,
                secondTeamCase: complexSecondTeamCase,
                roundNumber: roundNumber,
                childText: AppLocalizations.of(context)!.complex,
              ),
              10.height,
              TrixButton(
                firstTeamCase: trixFirstTeamCase,
                secondTeamCase: trixSecondTeamCase,
                roundNumber: roundNumber,
                childText: AppLocalizations.of(context)!.trix,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
