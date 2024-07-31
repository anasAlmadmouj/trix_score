import 'package:trix_score/core/imports/app_imports.dart';

class CustomTrixDropDownButton extends StatelessWidget {
  const CustomTrixDropDownButton({
    super.key,
    required this.onChanged,
    required this.value, required this.list,
  });

  final void Function(int?)? onChanged;
  final int value;
  final List<int> list;

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<TeamsCubit, TeamsState>(
      builder: (context, state) {
        TeamsCubit cubit = TeamsCubit.get(context);

        return DropdownButtonFormField<int>(
          onChanged: onChanged,
          items: list.map((int value) {
            return DropdownMenuItem<int>(
              value: value,
              child: Text(value.toString()),
            );
          }).toList(),
          decoration:  InputDecoration(
            label: Text(AppLocalizations.of(context)!.trixChoosing),
            border: const OutlineInputBorder(),
          ),
        );
      },
    );
  }
}
