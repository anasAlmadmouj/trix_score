import 'package:trix_score/core/imports/app_imports.dart';

class TrixButton extends StatelessWidget {
  final String roundNumber;
  final String childText;
  final int firstTeamCase;
  final int secondTeamCase;

  const TrixButton({
    required this.roundNumber,
    required this.childText,
    super.key,
    required this.firstTeamCase,
    required this.secondTeamCase,
  });

  @override
  Widget build(BuildContext context) {
    TeamsCubit cubit =TeamsCubit.get(context);
    return  InkWell(
      onTap: () {
        if(firstTeamCase == 0 && secondTeamCase == 0){
          cubit.roundNumber = roundNumber;
          showCustomDropDownDialog(
            context: context,
            child: CustomDialog(
                height: 300.h,
                action: [
                  Text('مجموع ${cubit.firstTeamName}' , style: Theme.of(context).textTheme.bodyMedium,),
                  20.height,
                  // Here, default theme colors are used for activeBgColor, activeFgColor, inactiveBgColor and inactiveFgColor
                  BlocBuilder<TeamsCubit, TeamsState>(
                    builder: (context, state) {
                      TeamsCubit cubit2 = TeamsCubit.get(context);
                      return Center(
                        child: ToggleSwitch(
                          dividerColor: MyColors.primaryColor,
                          activeFgColor: Colors.white,
                          inactiveBgColor: Colors.white,
                          activeBgColor: [MyColors.primaryColor],
                          inactiveFgColor: MyColors.primaryColor,
                          initialLabelIndex: cubit2.firstToggleIndex,
                          totalSwitches: cubit.list.length,
                          minHeight: 50.h,
                          minWidth: 45.w,
                          labels: cubit.list,
                          onToggle: (index) {
                            cubit.changeFirstToggle(index!);
                          },
                        ),
                      );
                    },
                  ),
                  40.height,
                  Text('مجموع ${cubit.secondTeamName}' , style: Theme.of(context).textTheme.bodyMedium,),
                  20.height,

                  BlocBuilder<TeamsCubit, TeamsState>(
                    builder: (context, state) {
                      TeamsCubit cubit = TeamsCubit.get(context);
                      return Center(
                        child: ToggleSwitch(
                          dividerColor: MyColors.primaryColor,
                          activeFgColor: Colors.white,
                          inactiveBgColor: Colors.white,
                          activeBgColor: [MyColors.primaryColor],
                          inactiveFgColor: MyColors.primaryColor,
                          initialLabelIndex: cubit.secondToggleIndex,
                          totalSwitches: cubit.list.length,
                          minHeight: 50.h,
                          minWidth: 45.w,
                          labels: cubit.list,
                          onToggle: (index) {
                            cubit.changeSecondToggle(index!);
                          },
                        ),
                      );
                    },
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Expanded(child: ElevatedButton(onPressed: ()async{
                        await cubit.calculateTrixTeamRound(context);
                        cubit.trixClear();
                        navigateTo(context, ResultScreen());
                      }, child: Text(AppLocalizations.of(context)!.calculate))),
                    ],
                  )
                ]),
            title: AppLocalizations.of(context)!.chooseTrixCase,
            iconFunction: () {
              maybePop(context);
            },
          );
        }
        else {
          showCustomDropDownDialog(
            context: context,
            child: CustomDialog(
                height: 150.h,
                action: [
                  Text('لقد لعبت هذه المملكة من قبل و هل تريد التعديل على نتيجتها ؟' , style: Theme.of(context).textTheme.bodyMedium,),
                  Spacer(),
                  Row(
                    children: [
                      Expanded(child: ElevatedButton(onPressed: ()async{
                        maybePop(context);
                        cubit.roundNumber = roundNumber;
                        showCustomDropDownDialog(
                          context: context,
                          child: CustomDialog(
                              height: 300.h,
                              action: [
                                Text('مجموع ${cubit.firstTeamName}' , style: Theme.of(context).textTheme.bodyMedium,),
                                20.height,
                                // Here, default theme colors are used for activeBgColor, activeFgColor, inactiveBgColor and inactiveFgColor
                                BlocBuilder<TeamsCubit, TeamsState>(
                                  builder: (context, state) {
                                    TeamsCubit cubit2 = TeamsCubit.get(context);
                                    return Center(
                                      child: ToggleSwitch(
                                        dividerColor: MyColors.primaryColor,
                                        activeFgColor: Colors.white,
                                        inactiveBgColor: Colors.white,
                                        activeBgColor: [MyColors.primaryColor],
                                        inactiveFgColor: MyColors.primaryColor,
                                        initialLabelIndex: cubit2.firstToggleIndex,
                                        totalSwitches: cubit.list.length,
                                        minHeight: 50.h,
                                        minWidth: 45.w,
                                        labels: cubit.list,
                                        onToggle: (index) {
                                          cubit.changeFirstToggle(index!);
                                        },
                                      ),
                                    );
                                  },
                                ),
                                40.height,
                                Text('مجموع ${cubit.secondTeamName}' , style: Theme.of(context).textTheme.bodyMedium,),
                                20.height,

                                BlocBuilder<TeamsCubit, TeamsState>(
                                  builder: (context, state) {
                                    TeamsCubit cubit = TeamsCubit.get(context);
                                    return Center(
                                      child: ToggleSwitch(
                                        dividerColor: MyColors.primaryColor,
                                        activeFgColor: Colors.white,
                                        inactiveBgColor: Colors.white,
                                        activeBgColor: [MyColors.primaryColor],
                                        inactiveFgColor: MyColors.primaryColor,
                                        initialLabelIndex: cubit.secondToggleIndex,
                                        totalSwitches: cubit.list.length,
                                        minHeight: 50.h,
                                        minWidth: 45.w,
                                        labels: cubit.list,
                                        onToggle: (index) {
                                          cubit.changeSecondToggle(index!);
                                        },
                                      ),
                                    );
                                  },
                                ),
                                Spacer(),
                                Row(
                                  children: [
                                    Expanded(child: ElevatedButton(onPressed: ()async{
                                      await cubit.calculateTrixTeamRound(context);
                                      cubit.trixClear();
                                      navigateTo(context, ResultScreen());
                                    }, child: Text(AppLocalizations.of(context)!.calculate))),
                                  ],
                                )
                              ]),
                          title: AppLocalizations.of(context)!.chooseTrixCase,
                          iconFunction: () {
                            maybePop(context);
                          },
                        );
                      }, child: Text('نعم'))),
                      SizedBox(
                        width: 15.w,
                      ),
                      Expanded(child: ElevatedButton(onPressed: ()async{
                        maybePop(context);
                      }, child: Text('الغاء'))),
                    ],
                  )
                ]),
            title: '',
            iconFunction: () {
              maybePop(context);
            },
          );
        }
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: MyColors.primaryColor,
          borderRadius: BorderRadius.circular(6),
        ),
        width: double.infinity,
        height: 30,
        child: Text(childText,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white)),
      ),
    );
  }
}
