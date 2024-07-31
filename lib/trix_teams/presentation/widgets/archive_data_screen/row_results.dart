import 'package:trix_score/core/imports/app_imports.dart';

class RowResults extends StatelessWidget {
  final int index;
  final int firstTeamTrixResult;
  final int firstTeamComplexResul;
  final int secondTeamTrixResul;
  final int secondTeamComplexResul;

  const RowResults({
    super.key,
    required this.index,
    required this.firstTeamTrixResult,
    required this.firstTeamComplexResul,
    required this.secondTeamTrixResul,
    required this.secondTeamComplexResul,
  });

  @override
  Widget build(BuildContext context) {
    TeamsCubit cubit = TeamsCubit.get(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        cubit.listArchiveData.listArchiveData[index].typeGame == trix
            ? Text(
                firstTeamTrixResult.toString(),
                style: Theme.of(context).textTheme.bodyMedium,
              )
            : Text(
                firstTeamComplexResul.toString(),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
        25.width,
        cubit.listArchiveData.listArchiveData[index].typeGame == trix
            ? Text(
                secondTeamTrixResul.toString(),
                style: Theme.of(context).textTheme.bodyMedium,
              )
            : Text(
                secondTeamComplexResul.toString(),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
      ],
    );
  }
}
