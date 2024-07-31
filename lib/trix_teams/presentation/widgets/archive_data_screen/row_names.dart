import 'package:trix_score/core/imports/app_imports.dart';

class RowNames extends StatelessWidget {
  final int index;

  const RowNames({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    TeamsCubit cubit = TeamsCubit.get(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width/4,
          child: Text(
            cubit.listArchiveData.listArchiveData[index].firstTeamName.toString(),
            style: Theme.of(context).textTheme.bodyLarge,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
        25.width,
        SizedBox(
          width: MediaQuery.sizeOf(context).width/4,
          child: Text(
            cubit.listArchiveData.listArchiveData[index].secondTeamName
                .toString(),
            style: Theme.of(context).textTheme.bodyLarge,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}
