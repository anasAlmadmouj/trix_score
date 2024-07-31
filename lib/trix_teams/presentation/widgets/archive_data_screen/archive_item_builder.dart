import 'package:trix_score/core/imports/app_imports.dart';

class ArchiveItemBuilder extends StatelessWidget {
  final int index;
  const ArchiveItemBuilder({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
          // Color(0xffede9e8),
          borderRadius: BorderRadius.circular(16),
        ),
        child: CustomExpansionTile(index: index),
      ),
    );
  }
}
