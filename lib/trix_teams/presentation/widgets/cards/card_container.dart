import 'package:trix_score/core/imports/app_imports.dart';

class CardContainer extends StatelessWidget {
  double? width;
  double? height;
  String imagePath;
  bool color;

  CardContainer({
    this.width,
    this.height,
    required this.imagePath,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: width ?? 70,
      height: height ?? 120,
      decoration: BoxDecoration(
        border: Border.all(
            color: color ? Colors.red : MyColors.primaryColor, width: 3),
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.fill),
      ),
    );
  }
}
