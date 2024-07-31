import 'package:trix_score/core/imports/app_imports.dart';

class ComplexCalculateScreen extends StatelessWidget {
  const ComplexCalculateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
          body: const SafeArea(
            top: false,
            bottom: true,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 30,
                  ),
                ),
                ComplexScreenAppbar(),
                RowOfQueensCard(),
                RowOfKing(),
                RowOfDiamond(),
                RowOfWig(),
              ],
            ),
          ),
          floatingActionButton: const CustomFloatingActionButton(),

        );

  }
}


