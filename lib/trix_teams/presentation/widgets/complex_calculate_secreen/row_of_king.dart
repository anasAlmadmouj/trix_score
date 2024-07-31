import 'package:trix_score/core/imports/app_imports.dart';

class RowOfKing extends StatelessWidget {
  const RowOfKing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeamsCubit , TeamsState>(
      builder: (context, state) {
        TeamsCubit cubit = TeamsCubit.get(context);
        return SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    cubit.changeKingH();
                  },
                  child: CardContainer(
                    imagePath: ImageAssets.kingH,
                    color: cubit.isKingH,
                    width: 70.w,
                    height: 100.h,
                  )),

            ],
          ),
        );
      }
    );
  }
}
