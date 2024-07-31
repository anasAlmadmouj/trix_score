import 'package:trix_score/core/imports/app_imports.dart';

class SpadesDiamondsRow extends StatelessWidget {
  const SpadesDiamondsRow({
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
              cubit.changeQueenDDoubleGame();
            },
            child: CardContainer(
              imagePath: ImageAssets.queenD,
              color: cubit.isQueenDDoubleGame,
              height: MediaQuery.of(context).size.width / 2.2,
              width: MediaQuery.of(context).size.width / 3,
            ),
          ),
          InkWell(
            onTap: (){
              cubit.changeQueenSDoubleGame();
            },
            child: CardContainer(
              imagePath: ImageAssets.queenS,
              color: cubit.isQueenSDoubleGame,
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
