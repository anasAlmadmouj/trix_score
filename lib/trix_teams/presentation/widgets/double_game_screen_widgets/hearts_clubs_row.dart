import 'package:trix_score/core/imports/app_imports.dart';

class HeartsClubsRow extends StatelessWidget {
  const HeartsClubsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeamsCubit, TeamsState>(
  builder: (context, state) {
    TeamsCubit cubit = TeamsCubit.get(context);
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: (){
              cubit.changeQueenHDoubleGame();
            },
            child: CardContainer(
              imagePath: ImageAssets.queenH,
              color: cubit.isQueenHDoubleGame,
              height: MediaQuery.of(context).size.width / 2.2,
              width: MediaQuery.of(context).size.width / 3,
            ),
          ),
          InkWell(
            onTap: (){
              cubit.changeQueenCDoubleGame();
            },
            child: CardContainer(
              imagePath: ImageAssets.queenC,
              color: cubit.isQueenCDoubleGame,
              height: MediaQuery.of(context).size.width / 2.2,
              width: MediaQuery.of(context).size.width / 3,
            ),
          ),
        ],
      ),
    );
  },
);
  }
}
