import 'package:trix_score/core/imports/app_imports.dart';

class RowOfQueensCard extends StatelessWidget {
  const RowOfQueensCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeamsCubit, TeamsState>
      (builder: (context, state) {
        TeamsCubit cubit = TeamsCubit.get(context);
      return SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            QueenHCard(cubit: cubit),
            QueenCCard(cubit: cubit),
            QueenDCard(cubit: cubit),
            QueenSCard(cubit: cubit),
          ],
        ),
      );
    });
  }
}

class QueenSCard extends StatelessWidget {
  const QueenSCard({
    super.key,
    required this.cubit,
  });

  final TeamsCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
          onTap: () {
            cubit.changeQueenS();
            },
          child: CardContainer(
            imagePath: ImageAssets.queenS,
            color: cubit.isQueenS,
              width: 100.w,
              height: 100.h,
          )),
    );
  }
}

class QueenDCard extends StatelessWidget {
  const QueenDCard({
    super.key,
    required this.cubit,
  });

  final TeamsCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
          onTap: () {
            cubit.changeQueenD();                    },
          child: CardContainer(
            imagePath: ImageAssets.queenD,
            color: cubit.isQueenD,
              width: 100.w,
              height: 100.h,
          )),
    );
  }
}

class QueenCCard extends StatelessWidget {
  const QueenCCard({
    super.key,
    required this.cubit,
  });

  final TeamsCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
          onTap: () {
            cubit.changeQueenC();                    },
          child: CardContainer(
            imagePath: ImageAssets.queenC,
            color: cubit.isQueenC,
              width: 100.w,
              height: 100.h,
          )),
    );
  }
}

class QueenHCard extends StatelessWidget {
  const QueenHCard({
    super.key,
    required this.cubit,
  });

  final TeamsCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
          onTap: () {
            cubit.changeQueenH();
          },
          child: CardContainer(
            imagePath: ImageAssets.queenH,
            color: cubit.isQueenH,
            width: 100.w,
            height: 100.h,
          )),
    );
  }
}
