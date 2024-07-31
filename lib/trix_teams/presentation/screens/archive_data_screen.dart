import 'package:trix_score/core/imports/app_imports.dart';

class ArchiveDataScreen extends StatelessWidget {
  const ArchiveDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TeamsCubit cubit = TeamsCubit.get(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            maybePop(context);
          },
          icon: const FaIcon(
            FontAwesomeIcons.arrowRight,
            color: MyColors.primaryColor,
            size: 30,
          ),
        ),
      ),
      body: cubit.listArchiveData.listArchiveData.isEmpty ? Center(
        child: Text( AppLocalizations.of(context)!.archiveNoGame, style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: MyColors.primaryColor),),
      )
          : SafeArea(
        child: ListView.separated(
          itemBuilder: (context, index) => ArchiveItemBuilder(index: index),
          separatorBuilder: (context, index) => 10.height,
          itemCount: cubit.listArchiveData.listArchiveData.length,
        ),
      ),
    );

  }
}
