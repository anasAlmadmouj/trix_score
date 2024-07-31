import 'package:trix_score/core/imports/app_imports.dart';

class LogoContainer extends StatelessWidget {
  const LogoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Image(image: AssetImage(ImageAssets.logo) , height: MediaQuery.sizeOf(context).width/1.7),
      );
  }
}
