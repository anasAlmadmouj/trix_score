import 'package:trix_score/core/imports/app_imports.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    Key? key,
    required this.action,
    this.onTapTitle,
    required this.height,
    this.titleIconData,
  }) : super(key: key);

  final double height;
  final List<Widget> action;
  final Function? onTapTitle;
  final IconData? titleIconData;
  @override
  Widget build(BuildContext context) {
        return SizedBox(
          height: height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // shrinkWrap: true,
            children: action,
          ),
        );

  }
}
