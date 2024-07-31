import 'package:trix_score/core/imports/app_imports.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeamsCubit, TeamsState>(
      builder: (context, state) {
        TeamsCubit cubit = TeamsCubit.get(context);
        return Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingButton(cubit: cubit),
            20.width,
            const RadioTeams(),
          ],
        );
      },
    );
  }
}

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    super.key,
    required this.cubit,
  });

  final TeamsCubit cubit;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () async {
      if(cubit.radioValue !=0){
        if (cubit.typeGame == complex) {
          await cubit.calculateCCTeamRound(context);
        }
        else if (cubit.typeGame == trix) {
          await cubit.calculateComplexTrixTeamRound(context);
        }
        cubit.complexClear();
        navigateToAndRemoveUntil(context, const ResultScreen());
      }
      else{
        showToast(message: AppLocalizations.of(context)!.validateComplexScreen, state: ToastStates.ERROR);
      }
    }, child: Text(AppLocalizations.of(context)!.calculate));
  }
}
