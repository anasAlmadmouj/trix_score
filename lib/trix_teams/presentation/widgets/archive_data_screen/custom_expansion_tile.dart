import 'package:trix_score/core/imports/app_imports.dart';

class CustomExpansionTile extends StatelessWidget {
  final int index;

  const CustomExpansionTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    TeamsCubit cubit = TeamsCubit.get(context);
    return ExpansionTile(
      backgroundColor: Colors.white,
      title: TitleNameTeams(index: index),
      subtitle: ExpansionSubTitle(index: index),
      children: [
        DataTable(
            columns: [
              DataColumn(
                label: Text(cubit.listArchiveData.listArchiveData[index].firstTeamName.toString(),),
              ),
              DataColumn(
                label: Text(cubit.listArchiveData.listArchiveData[index].secondTeamName.toString(),),
              ),
              DataColumn(
                label: Text('المملكة'),
              ),
            ],
            rows: [

              DataRow(cells: [
    cubit.listArchiveData.listArchiveData[index].typeGame == trix ?
    DataCell(Text(cubit.listArchiveData.listArchiveData[index]
                    .trixFirstKingdomTotalFirstTeam.toString()))
                :
    DataCell(Text(cubit.listArchiveData.listArchiveData[index]
        .ccFirstKingdomTotalFirstTeam.toString())),

                cubit.listArchiveData.listArchiveData[index].typeGame == trix ?
                DataCell(Text(cubit.listArchiveData.listArchiveData[index]
                    .trixFirstKingdomTotalSecondTeam.toString()))
                    :
                DataCell(Text(cubit.listArchiveData.listArchiveData[index]
                    .ccFirstKingdomTotalSecondTeam.toString())),
                DataCell(Text(AppLocalizations.of(context)!.firstKingdom)),
              ]),

              DataRow(cells: [
                cubit.listArchiveData.listArchiveData[index].typeGame == trix ?
                DataCell(Text(cubit.listArchiveData.listArchiveData[index]
                    .trixSecondKingdomTotalFirstTeam.toString()))
                    :
                DataCell(Text(cubit.listArchiveData.listArchiveData[index]
                    .ccSecondKingdomTotalFirstTeam.toString())),

                cubit.listArchiveData.listArchiveData[index].typeGame == trix ?
                DataCell(Text(cubit.listArchiveData.listArchiveData[index]
                    .trixSecondKingdomTotalSecondTeam.toString()))
                    :
                DataCell(Text(cubit.listArchiveData.listArchiveData[index]
                    .ccSecondKingdomTotalSecondTeam.toString())),
                DataCell(Text(AppLocalizations.of(context)!.secondKingdom)),
              ]),

              DataRow(cells: [
                cubit.listArchiveData.listArchiveData[index].typeGame == trix ?
                DataCell(Text(cubit.listArchiveData.listArchiveData[index]
                    .trixThirdKingdomTotalFirstTeam.toString()))
                    :
                DataCell(Text(cubit.listArchiveData.listArchiveData[index]
                    .ccThirdKingdomTotalFirstTeam.toString())),

                cubit.listArchiveData.listArchiveData[index].typeGame == trix ?
                DataCell(Text(cubit.listArchiveData.listArchiveData[index]
                    .trixThirdKingdomTotalSecondTeam.toString()))
                    :
                DataCell(Text(cubit.listArchiveData.listArchiveData[index]
                    .ccThirdKingdomTotalSecondTeam.toString())),
                DataCell(Text(AppLocalizations.of(context)!.thirdKingdom)),
              ]),

              DataRow(cells: [
                cubit.listArchiveData.listArchiveData[index].typeGame == trix ?
                DataCell(Text(cubit.listArchiveData.listArchiveData[index]
                    .trixFourthKingdomTotalFirstTeam.toString()))
                    :
                DataCell(Text(cubit.listArchiveData.listArchiveData[index]
                    .ccFourthKingdomTotalFirstTeam.toString())),

                cubit.listArchiveData.listArchiveData[index].typeGame == trix ?
                DataCell(Text(cubit.listArchiveData.listArchiveData[index]
                    .trixFourthKingdomTotalSecondTeam.toString()))
                    :
                DataCell(Text(cubit.listArchiveData.listArchiveData[index]
                    .ccFourthKingdomTotalSecondTeam.toString())),
                DataCell(Text(AppLocalizations.of(context)!.fourthKingdom)),
              ]),
            ])

      ],
    );
  }
}
