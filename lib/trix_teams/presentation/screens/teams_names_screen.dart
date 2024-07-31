import 'package:trix_score/core/imports/app_imports.dart';

class TeamsNamesScreen extends StatelessWidget {
  const TeamsNamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController firstTeamController = TextEditingController();
    TextEditingController secondTeamController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    TeamsCubit cubit = TeamsCubit.get(context);
    return Scaffold(
      body: Form(
        key: formKey,
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: (){
                        maybePop(context);
                      }, icon: const FaIcon(FontAwesomeIcons.arrowRight , color: MyColors.primaryColor, size: 30,),),
                      Text(AppLocalizations.of(context)!.chooseTeamsName, style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: MyColors.primaryColor),),
                    ],
                  ),
                ),
              ),
              const LogoContainer(),
              CustomTextFormField(
                hintText: AppLocalizations.of(context)!.firstTeam,
                controller: firstTeamController,
                validator: (String? val) {
                  if (val!.isEmpty) {
                    return AppLocalizations.of(context)!.validateTeamsName;
                  }
                  if (val.contains(' ')) {
                    return AppLocalizations.of(context)!.singleWordOnly;
                  }
                  return null;
                },
              ),

              CustomTextFormField(
                hintText: AppLocalizations.of(context)!.secondTeam,
                controller: secondTeamController,
                validator: (String? val){
                  if(val!.isEmpty){
                    return AppLocalizations.of(context)!.validateTeamsName;
                  }
                  if (val.contains(' ')) {
                    return AppLocalizations.of(context)!.singleWordOnly;
                  }
                  return null;
                },
              ),
              SliverToBoxAdapter(
                  child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: ElevatedButton(
                    onPressed: () {
                      if(formKey.currentState!.validate()){
                        cubit.firstTeamName = firstTeamController.text;
                        cubit.secondTeamName = secondTeamController.text;
                        navigateToAndRemoveUntil(context, const ResultScreen());
                      }
                    },
                    child:  Text(AppLocalizations.of(context)!.goToCalculate)),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
