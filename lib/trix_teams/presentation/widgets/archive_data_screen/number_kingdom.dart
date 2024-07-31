import 'package:trix_score/core/imports/app_imports.dart';

class NumberKingdom extends StatelessWidget {
  final String numberKingdom;
  const NumberKingdom({super.key, required this.numberKingdom});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(numberKingdom, style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
