import 'package:trix_score/core/imports/app_imports.dart';

showCustomDropDownDialog({
  required BuildContext context,
  required Widget child,
  required String title,
  required VoidCallback? iconFunction,
}) {
  return showDialog(
    context: context,
    builder: (context) => StatefulBuilder(
      builder: (context, setState) {
        setState;
        return AlertDialog(
          title: Row(
            children: [
              IconButton(
                onPressed: iconFunction,
                icon: const Icon(Icons.arrow_back_outlined),
                color: MyColors.primaryColor,
              ),
              Expanded(child: Text(title)),
            ],
          ),
          content: child,
        );
      }
    ),
  );
}
