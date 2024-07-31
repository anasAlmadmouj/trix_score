import 'package:trix_score/core/imports/app_imports.dart';

class HomeContainer extends StatelessWidget {
  final String title;
  final void Function()? onTap;

  const HomeContainer({
    required this.title,
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: InkWell(
              onTap: onTap,
              child: Stack(
                children: [
                  const BackContainer(),
                  FrontContainer(
                    title: title,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FrontContainer extends StatelessWidget {
  const FrontContainer({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      // height: 100,
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width / 1.2,
      transform: Matrix4.skewX(-.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24), bottomRight: Radius.circular(24)),
        border: Border.all(
          color: MyColors.primaryColor,
        ),
        color: Colors.white,
      ),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: MyColors.primaryColor),
      ),
    );
  }
}

class BackContainer extends StatelessWidget {
  const BackContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      margin: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width / 1.2,
      transform: Matrix4.skewX(-.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24), bottomRight: Radius.circular(24)),
        color: MyColors.primaryColor,
      ),
    );
  }
}
