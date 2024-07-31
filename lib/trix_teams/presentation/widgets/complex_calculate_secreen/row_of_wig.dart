import 'package:trix_score/core/imports/app_imports.dart';

class RowOfWig extends StatefulWidget {
  const RowOfWig({super.key});

  @override
  _RowOfWigState createState() => _RowOfWigState();
}

class _RowOfWigState extends State<RowOfWig> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeamsCubit, TeamsState>(
      builder: (context, state) {
        TeamsCubit cubit = TeamsCubit.get(context);
        return SliverToBoxAdapter(
          child: SizedBox(
            height: 176.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      heroTag: 'addButton',
                      onPressed: () {
                        cubit.wigCounterPlus();
                      },
                      child: Icon(Icons.add),
                    ),
                    cubit.wigCount.toInt() == 0
                        ? 48.width
                        : Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              cubit.wigCount.toInt().toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(color: MyColors.primaryColor),
                            ),
                          ),
                    FloatingActionButton(
                      heroTag: 'removeButton',
                      onPressed: () {
                        cubit.wigCounterMinus();
                      },
                      child: Icon(Icons.remove),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100.h,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: cubit.wigStackList.isNotEmpty
                            ? Directionality(
                                textDirection: TextDirection.ltr,
                                child: Stack(
                                  children: cubit.wigStackList,
                                ),
                              )
                            : Text(
                                AppLocalizations.of(context)!.wig,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: MyColors.primaryColor),
                              ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
