import 'package:trix_score/core/imports/app_imports.dart';

class TitleNameTeams extends StatelessWidget {
  final int index;

  const TitleNameTeams({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    TeamsCubit cubit = TeamsCubit.get(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ExpansionTitle(
          teamName: cubit.listArchiveData.listArchiveData[index].winnerName,
          nameColor: MyColors.successColor,
          icon: FontAwesomeIcons.crown,
          iconColor: MyColors.successIcon,
        ),
        ExpansionTitle(
          teamName: cubit.listArchiveData.listArchiveData[index].loserName,
          nameColor: MyColors.loserColor,
          icon: FontAwesomeIcons.medal,
          iconColor: MyColors.loserIcon,
        ),
      ],
    );
  }
}
