import 'package:trix_score/core/imports/app_imports.dart';

class ExpansionTitle extends StatelessWidget {
  final String teamName;
  final IconData icon;
  final Color iconColor;
  final Color nameColor;
  const ExpansionTitle({super.key , required this.teamName , required this.icon, required this.iconColor, required this.nameColor});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          teamName,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: nameColor),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        20.width,
        FaIcon( icon , color: iconColor,),
      ],
    );
  }
}
