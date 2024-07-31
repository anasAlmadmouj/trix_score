import 'package:trix_score/core/imports/app_imports.dart';

class EndResultRow extends StatelessWidget {
  const EndResultRow({super.key});

  @override
  Widget build(BuildContext context) {
    TeamsCubit cubit = TeamsCubit.get(context);
    return Column(
      children: [
        25.height,
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: MyColors.primaryColor,),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  cubit.isFirstTeamWinner() == isFirstTeamWinner?
                  FaIcon(FontAwesomeIcons.crown , color: MyColors.successIcon, size: 30.sp,)
                      :FaIcon(FontAwesomeIcons.medal , color: MyColors.loserIcon, size: 30.sp,),
                  10.width,
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width/4,
                    child: Text(
                      cubit.firstTeamName,
                      style: cubit.isFirstTeamWinner() == isFirstTeamWinner?
                      Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 30.sp , color: MyColors.successColor)
                      : Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 30.sp , color: MyColors.loserColor),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
              30.width,
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width/4,
                    child: Text(
                      cubit.secondTeamName,
                      style: cubit.isFirstTeamWinner() == notIsFirstTeamWinner?
                      Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 30.sp , color: MyColors.successColor)
                          : Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 30.sp , color: MyColors.loserColor),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  10.width,
                  cubit.isFirstTeamWinner() == notIsFirstTeamWinner ?
                  FaIcon(FontAwesomeIcons.crown , color:  MyColors.successIcon, size: 30.sp,)
                      : FaIcon(FontAwesomeIcons.medal , color: MyColors.loserIcon, size: 30.sp,),
                ],
              ),
            ],
          ),
        ),
        25.height,
      ],
    );
  }
}
