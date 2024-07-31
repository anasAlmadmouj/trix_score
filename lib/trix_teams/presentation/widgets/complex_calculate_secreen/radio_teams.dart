import 'package:trix_score/core/imports/app_imports.dart';

class RadioTeams extends StatelessWidget {
  const RadioTeams({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeamsCubit, TeamsState>(
      builder: (context, state) {
        TeamsCubit cubit = TeamsCubit.get(context);
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 80.w,
                  child: Text(
                    cubit.firstTeamName,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: MyColors.primaryColor),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                Radio(
                    value: 1,
                    groupValue: cubit.radioValue,
                    onChanged: (newVal) {
                      cubit.selectRadioTeams(newVal);
                    }),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 80.w,
                  child: Text(
                    cubit.secondTeamName,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: MyColors.primaryColor),
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    maxLines: 1,
                  ),
                ),
                Radio(
                    value: 2,
                    groupValue: cubit.radioValue,
                    onChanged: (newVal) {
                      cubit.selectRadioTeams(newVal);
                    }),
              ],
            ),
          ],
        );
      },
    );
  }
}
