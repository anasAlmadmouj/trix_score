import 'package:trix_score/core/imports/app_imports.dart';

class EndGameButton extends StatelessWidget {
  const EndGameButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TeamsCubit cubit = TeamsCubit.get(context);
    return ElevatedButton(
        onPressed: () async {
          if (cubit.typeGame == trix) {
            if (cubit.isCompleteTrixGame()) {
              await cubit.setArchiveData();
              navigateToAndRemoveUntil(context, const HomeScreen());
              cubit.cleanGame();
              cubit.clearHiveData();
            } else {
              showCustomDropDownDialog(
                context: context,
                child: CustomDialog(
                    height: MediaQuery.sizeOf(context).height / 4,
                    action: [
                      Text(AppLocalizations.of(context)!.endGameAskDialog),
                      25.height,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () async {
                              navigateToAndRemoveUntil(
                                  context, const HomeScreen());
                              await cubit.clearHiveData();
                              cubit.cleanGame();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                              ),
                              width: MediaQuery.sizeOf(context).width / 4,
                              alignment: Alignment.center,
                              height: 40,
                              child: Text(
                                AppLocalizations.of(context)!.end,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: MyColors.primaryColor),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              maybePop(context);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                              ),
                              width: MediaQuery.sizeOf(context).width / 4,
                              alignment: Alignment.center,
                              height: 40,
                              child: Text(
                                AppLocalizations.of(context)!.cancel,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: MyColors.primaryColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
                title: '',
                iconFunction: () {
                  maybePop(context);
                },
              );
            }
          } else if (cubit.typeGame == complex) {
            if (cubit.isCompleteComplexGame()) {
              navigateToAndRemoveUntil(context, const HomeScreen());
              await cubit.setArchiveData();
              await cubit.clearHiveData();
              cubit.cleanGame();
            } else {
              showCustomDropDownDialog(
                context: context,
                child: CustomDialog(
                    height: MediaQuery.sizeOf(context).height / 4,
                    action: [
                      Text(AppLocalizations.of(context)!.endGameAskDialog),
                      25.height,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () async {
                              navigateToAndRemoveUntil(
                                  context, const HomeScreen());
                              await cubit.clearHiveData();
                              cubit.cleanGame();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                              ),
                              width: MediaQuery.sizeOf(context).width / 4,
                              alignment: Alignment.center,
                              height: 40,
                              child: Text(
                                AppLocalizations.of(context)!.end,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: MyColors.primaryColor),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              maybePop(context);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                              ),
                              width: MediaQuery.sizeOf(context).width / 4,
                              alignment: Alignment.center,
                              height: 40,
                              child: Text(
                                AppLocalizations.of(context)!.cancel,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: MyColors.primaryColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
                title: '',
                iconFunction: () {
                  maybePop(context);
                },
              );
            }
          }
        },
        child: Text(AppLocalizations.of(context)!.endGameButton));
  }
}
