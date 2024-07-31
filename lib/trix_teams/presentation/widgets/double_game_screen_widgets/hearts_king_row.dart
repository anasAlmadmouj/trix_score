import 'package:trix_score/core/imports/app_imports.dart';

class HeartsKingRow extends StatelessWidget {
  const HeartsKingRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeamsCubit, TeamsState>(
      builder: (context, state) {
        TeamsCubit cubit = TeamsCubit.get(context);
        return SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  cubit.changeKingHDoubleGame();
                },
                child: CardContainer(
                  imagePath: ImageAssets.kingH,
                  color: cubit.isKingHDoubleGame,
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
