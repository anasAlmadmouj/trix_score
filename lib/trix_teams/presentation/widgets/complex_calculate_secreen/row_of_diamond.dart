import 'package:trix_score/core/imports/app_imports.dart';

class RowOfDiamond extends StatefulWidget {
  const RowOfDiamond({
    Key? key,
  }) : super(key: key);

  @override
  State<RowOfDiamond> createState() => _RowOfDiamondState();
}

class _RowOfDiamondState extends State<RowOfDiamond>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    TeamsCubit.get(context).controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    TeamsCubit.get(context).animation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: TeamsCubit.get(context).controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeamsCubit, TeamsState>(
      builder: (context, diamondState) {
        TeamsCubit cubit = TeamsCubit.get(context);
        return SliverToBoxAdapter(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SliderTheme(
                data: sliderThemeData(),
                child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: CustomSlider(cubit: cubit)),
              ),
              ShowDiamondImagesContainer(cubit: cubit),
            ],
          ),
        );
      },
    );
  }

  SliderThemeData sliderThemeData() {
    return const SliderThemeData(
      thumbColor: MyColors.loserColor,
      thumbShape: DiamondSliderThumbShape(),
      activeTrackColor: MyColors.primaryColor,
      inactiveTrackColor: Colors.grey,
    );
  }
}

class ShowDiamondImagesContainer extends StatelessWidget {
  const ShowDiamondImagesContainer({
    super.key,
    required this.cubit,
  });

  final TeamsCubit cubit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => 2.width,
        itemCount: cubit.selectedDiamondNum.toInt(),
        itemBuilder: (context, index) {
          return SlideTransition(
            position: cubit.animation,
            child: Image.asset(
              ImageAssets.aceD,
              width: 40.w,
            ),
          );
        }, // Placeholder for non-visible images
      ),
    );
  }
}

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    super.key,
    required this.cubit,
  });

  final TeamsCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: cubit.selectedDiamondNum,
      max: 13,
      divisions: 13,
      label: cubit.selectedDiamondNum.toInt().round().toString(),
      onChanged: (double value) {
        cubit.addImage();
        cubit.changeDiamondSlider(value);
      },
    );
  }
}
