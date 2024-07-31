import 'package:trix_score/core/imports/app_imports.dart';

class ComplexScreenAppbar extends StatelessWidget {
  const ComplexScreenAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                maybePop(context);
              },
              icon: const FaIcon(
                FontAwesomeIcons.arrowRight,
                color: MyColors.primaryColor,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
