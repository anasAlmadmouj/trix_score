import 'package:trix_score/core/imports/app_imports.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator ;
  const CustomTextFormField({
    required this.controller,
    required this.hintText,
     this.validator,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: TextFormField(
          style: Theme.of(context).textTheme.bodyMedium,
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[400]),

          ),
          controller: controller,
          validator: validator,
        ),
      ),
    );
  }
}
