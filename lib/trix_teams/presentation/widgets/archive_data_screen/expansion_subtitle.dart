import 'package:trix_score/core/imports/app_imports.dart';

class ExpansionSubTitle extends StatelessWidget {
  final int index;
  const ExpansionSubTitle({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    TeamsCubit cubit = TeamsCubit.get(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          cubit.listArchiveData.listArchiveData[index].dateOfGame,
          style: Theme.of(context).textTheme.bodyMedium,
        ),

        Text(
          cubit.listArchiveData.listArchiveData[index].typeGame == trix?
          AppLocalizations.of(context)!.trixTeams
              : cubit.listArchiveData.listArchiveData[index].typeGame ==complex ?
          AppLocalizations.of(context)!.complexTeams
              : '' ,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
