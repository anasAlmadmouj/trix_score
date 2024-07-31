import 'package:trix_score/core/imports/app_imports.dart';

class DoubleGameScreen extends StatelessWidget {
  const DoubleGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TeamsCubit cubit = TeamsCubit.get(context);
    return WillPopScope(
      onWillPop: () async {
        cubit.cleanBackComplexScreens();
        return true;
      },
      child: const Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              DoubleScreenAppBar(),
              HeartsClubsRow(),
              HeartsKingRow(),
              SpadesDiamondsRow(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavButton(),
      ),
    );
  }
}