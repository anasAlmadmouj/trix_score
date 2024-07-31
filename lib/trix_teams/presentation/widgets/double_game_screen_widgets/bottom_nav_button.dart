import 'package:trix_score/core/imports/app_imports.dart';

class BottomNavButton extends StatelessWidget {
  const BottomNavButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: ElevatedButton(
          onPressed: () {
            navigateTo(context, const ComplexCalculateScreen());
          },
          child: Text(AppLocalizations.of(context)!.goToCalculate)),
    );
  }
}
