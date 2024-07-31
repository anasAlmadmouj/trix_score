import 'package:trix_score/core/imports/app_imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<String> _getAppVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }

  @override
  Widget build(BuildContext context) {
    TeamsCubit cubit = TeamsCubit.get(context);
    var currentBackPressTime;
    return WillPopScope(
      onWillPop: () async {
        DateTime now = DateTime.now();

        if (currentBackPressTime == null ||
            now.difference(currentBackPressTime) > const Duration(seconds: 2)){
          currentBackPressTime = now;
          cubit.showSnackBar(context: context, title: AppLocalizations.of(context)!.clickAgain);
          return Future.value(false);
        }
        return Future.value(true);
      },

      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Container(
                        height: MediaQuery.sizeOf(context).width / 1.5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageAssets.logo),
                          ),
                        ),
                      ),
                    ),
                    HomeContainer(
                      title: AppLocalizations.of(context)!.trixTeams,
                      onTap: () {
                        cubit.typeGame = trix;
                        navigateTo(context, const TeamsNamesScreen());
                      },
                    ),
                    HomeContainer(
                      title: AppLocalizations.of(context)!.complexTeams,
                      onTap: () {
                        cubit.typeGame = complex;
                        navigateTo(context, const TeamsNamesScreen());
                      },
                    ),
                    HomeContainer(
                      title: AppLocalizations.of(context)!.archive,
                      onTap: () async {
                        await cubit.getArchiveData();
                        navigateTo(context, const ArchiveDataScreen());
                      },
                    ),
                  ],
                ),
              ),
              FutureBuilder<String>(
                future: _getAppVersion(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Text('Error fetching version');
                  } else {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Version: ${snapshot.data}',
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: MyColors.primaryColor)
                        ),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
