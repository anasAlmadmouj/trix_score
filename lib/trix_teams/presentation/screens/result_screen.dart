import 'package:trix_score/core/imports/app_imports.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeamsCubit, TeamsState>(
      builder: (context, state) {
        TeamsCubit cubit = TeamsCubit.get(context);
        return WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  const TotalResultContainer(),
                  (cubit.typeGame == trix && cubit.isCompleteTrixGame() )
                      || (cubit.typeGame == complex && cubit.isCompleteComplexGame())?
                  const EndResultRow()
                  :const Offstage(),
                  MessageBox(
                    text: AppLocalizations.of(context)!.firstKingdom,
                    onTap: () {
                      cubit.firstKingdomShow();
                    },
                  ),
                  10.height,
                  cubit.isFirstKingdomShow
                      ? const FirstKingdomResult()
                      : const Offstage(),
                  MessageBox(
                    text: AppLocalizations.of(context)!.secondKingdom,
                    onTap: () {
                      (cubit.typeGame == trix && cubit.isTrixSecondKingdomReady())
                          || (cubit.typeGame == complex && cubit.isComplexSecondKingdomReady())
                          ? cubit.secondKingdomShow()
                          : cubit.showSnackBar(context: context ,title: AppLocalizations.of(context)!.notPlayedPreviousKingdom );
                    },
                  ),
                  10.height,
                  cubit.isSecondKingdomShow
                      ? const SecondKingdomResult()
                      : const Offstage(),
                  MessageBox(
                    text: AppLocalizations.of(context)!.thirdKingdom,
                    onTap: () {
                      (cubit.typeGame == trix && cubit.isTrixThirdKingdomReady())
                          || (cubit.typeGame == complex && cubit.isComplexThirdKingdomReady())?
                    cubit.thirdKingdomShow()
                          : cubit.showSnackBar(context: context ,title: AppLocalizations.of(context)!.notPlayedPreviousKingdom );
                    },
                  ),
                  10.height,
                  cubit.isThirdKingdomShow
                      ? const ThirdKingdomResult()
                      : const Offstage(),
                  MessageBox(
                    text: AppLocalizations.of(context)!.fourthKingdom,
                    onTap: () {
                      (cubit.typeGame == trix && cubit.isTrixFourthKingdomReady())
                          || (cubit.typeGame == complex && cubit.isComplexFourthKingdomReady())?
                      cubit.fourthKingdomShow()
                          : cubit.showSnackBar(context: context ,title: AppLocalizations.of(context)!.notPlayedPreviousKingdom );
                    },
                  ),
                  10.height,
                  cubit.isFourthKingdomShow
                      ? const FourthKingdomResult()
                      : const Offstage(),
                  const EndGameButton(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

