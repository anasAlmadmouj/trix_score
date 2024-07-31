import 'package:trix_score/core/imports/app_imports.dart';

class RoundButton extends StatelessWidget {
  final String roundNumber;
  final String childText;
  final int firstTeamCase;
  final int secondTeamCase;
  const RoundButton({
    required this.roundNumber,
    required this.childText,
    required this.firstTeamCase,
    required this.secondTeamCase,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TeamsCubit cubit = TeamsCubit.get(context);
    return InkWell(
      onTap: () {
        if(firstTeamCase == 0 && secondTeamCase == 0){
          cubit.roundNumber = roundNumber;
          navigateTo(context, const DoubleGameScreen());
        }
        else {
          showCustomDropDownDialog(
            context: context,
            child: CustomDialog(
                height: 150.h,
                action: [
                  Text('لقد لعبت هذه المملكة من قبل و هل تريد التعديل على نتيجتها ؟' , style: Theme.of(context).textTheme.bodyMedium,),
                  Spacer(),
                  Row(
                    children: [
                      Expanded(child: ElevatedButton(onPressed: ()async{
                        cubit.roundNumber = roundNumber;
                        navigateTo(context, const DoubleGameScreen());
                      }, child: Text('نعم'))),
                      SizedBox(
                        width: 15.w,
                      ),
                      Expanded(child: ElevatedButton(onPressed: ()async{
                        maybePop(context);
                      }, child: Text('الغاء'))),
                    ],
                  )
                ]),
            title: '',
            iconFunction: () {
              maybePop(context);
            },
          );
        }
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: MyColors.primaryColor,
          borderRadius: BorderRadius.circular(6),
        ),
        width: double.infinity,
        height: 30,
        child: Text(childText, style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white)),
      ),
    );
  }
}
