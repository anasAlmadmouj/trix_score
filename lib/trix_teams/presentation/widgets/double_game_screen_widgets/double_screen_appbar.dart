import 'package:trix_score/core/imports/app_imports.dart';

class DoubleScreenAppBar extends StatelessWidget {
  const DoubleScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            Text(
              AppLocalizations.of(context)!.doubleScreenAppBar,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: MyColors.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
