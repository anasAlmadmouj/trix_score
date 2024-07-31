import 'package:trix_score/core/imports/app_imports.dart';

class TotalResultContainer extends StatelessWidget {
  const TotalResultContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TeamsCubit cubit = TeamsCubit.get(context);
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          10.height,
          Expanded(
            child: Column(
              children: [
                Text(
                  cubit.firstTeamName,
                  style: Theme.of(context).textTheme.bodyLarge,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                20.width,
                Container(
                  height: 2,
                  width: 80,
                  color: Colors.grey,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                ),
                20.width,
                Text(
                  cubit.totalFirstTeam.toString(),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.normal,
                        color: cubit.isFirstTeamWinner() == isFirstTeamWinner
                            ? MyColors.successColor: cubit.isFirstTeamWinner() == notIsFirstTeamWinner
                                ? MyColors.loserColor
                            : Colors.black,
                      ),
                ),
              ],
            ),
          ),
          Container(
            height: 2,
            width: 30,
            color: Colors.grey,
            margin: const EdgeInsets.symmetric(vertical: 5),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  cubit.secondTeamName,
                  style: Theme.of(context).textTheme.bodyLarge,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                20.width,
                Container(
                  height: 2,
                  width: 80,
                  color: Colors.grey,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                ),
                20.width,
                Text(
                  cubit.totalSecondTeam.toString(),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.normal,
                        color: cubit.isFirstTeamWinner() == notIsFirstTeamWinner
                            ? MyColors.successColor : cubit.isFirstTeamWinner() == isFirstTeamWinner
                                ? MyColors.loserColor
                            : Colors.black,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
