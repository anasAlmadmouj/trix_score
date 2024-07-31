

import 'package:intl/intl.dart';
import 'package:trix_score/core/imports/app_imports.dart';

class TeamsCubit extends Cubit<TeamsState> {
  TeamsCubit() : super(const TeamsState());

  static TeamsCubit get(context) => BlocProvider.of(context);

  //Total Double Variables
  int totalDouble = 0;
  int totalQueens = 0;
  int totalFirstTeam = 0;
  int totalSecondTeam = 0;
  int totalKing = 0;
  int totalWig = 0;
  int firstCase = 0;
  int secondCase = 0;
  String roundNumber = '';
  String firstTeamName = '';
  String secondTeamName = '';
  int? radioValue = 0;
  String typeGame = '';

  int trixCaseFirstTeam = 350;

  int trixCaseSecondTeam = 150;

  TextEditingController firstNameController = TextEditingController();
  TextEditingController secondNameController = TextEditingController();
  late AnimationController controller;
  late Animation<Offset> animation;

  int firstToggleIndex = 0;
  int secondToggleIndex = 4;
  List<String> list = ['350', '300' , '200' , '250', '150'];
  bool snackbarShown = false;

  void showSnackBar({required BuildContext context, required String title}) {
    final scaffold = ScaffoldMessenger.of(context);
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    scaffold.showSnackBar(
      SnackBar(
          duration: const Duration(seconds: 2),

        content: Text(title),
        action: SnackBarAction(
            label: 'اغلاق', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  void changeFirstToggle(int value) {
    emit(state.copyWith(requestState: RequestState.loading));
    if (value == 0) {
      firstToggleIndex = 0;
      secondToggleIndex = 4;
      trixCaseFirstTeam = 350;
      trixCaseSecondTeam = 150;
    }
    if (value == 1) {
      firstToggleIndex = 1;
      secondToggleIndex = 2;
      trixCaseFirstTeam = 300;
      trixCaseSecondTeam = 200;
    }
    if (value == 2) {
      firstToggleIndex = 2;
      secondToggleIndex = 1;
      trixCaseFirstTeam = 200;
      trixCaseSecondTeam = 300;
    }
    if (value == 3) {
      firstToggleIndex = 3;
      secondToggleIndex = 3;
      trixCaseFirstTeam = 250;
      trixCaseSecondTeam = 250;
    }
    if (value == 4) {
      firstToggleIndex = 4;
      secondToggleIndex = 0;
      trixCaseFirstTeam = 150;
      trixCaseSecondTeam = 350;
    }
    emit(state.copyWith(requestState: RequestState.success));
  }

  void changeSecondToggle(int value) {
    emit(state.copyWith(requestState: RequestState.loading));
    if (value == 0) {
      secondToggleIndex = 0;
      firstToggleIndex = 4;
      trixCaseSecondTeam = 350;
      trixCaseFirstTeam = 150;
    }
    if (value == 1) {
      secondToggleIndex = 1;
      firstToggleIndex = 2;
      trixCaseSecondTeam = 300;
      trixCaseFirstTeam = 200;
    }
    if (value == 2) {
      secondToggleIndex = 2;
      firstToggleIndex = 1;
      trixCaseSecondTeam = 200;
      trixCaseFirstTeam = 300;
    }
    if (value == 3) {
      secondToggleIndex = 3;
      firstToggleIndex = 3;
      trixCaseSecondTeam = 250;
      trixCaseFirstTeam = 250;
    }
    if (value == 4) {
      secondToggleIndex = 4;
      firstToggleIndex = 0;
      trixCaseSecondTeam = 150;
      trixCaseFirstTeam = 350;
    }
    emit(state.copyWith(requestState: RequestState.success));
  }



  List<Widget> wigStackList = [];
  List<Widget> diamondStackList = [];
  double wigCardPadding = 0;
  double diamondCardPadding = 0;

  void addWigStack() {
    emit(state.copyWith(requestState: RequestState.loading));
    wigStackList.add(
      Padding(
        padding: EdgeInsets.only(left: wigCardPadding),
        child: Container(
          height: 100.h,
          width: 70.w,
          decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(ImageAssets.wigCard),
              ),
              border: Border.all(color: Colors.white, width: 3.w)),
        ),
      ),
    );
    emit(state.copyWith(requestState: RequestState.success));
  }

  void removeWigStack() {
    emit(state.copyWith(requestState: RequestState.loading));
    wigStackList.removeLast();
    emit(state.copyWith(requestState: RequestState.success));
  }

  void addDiamondStack() {
    emit(state.copyWith(requestState: RequestState.loading));
    diamondStackList.add(
      Padding(
        padding: EdgeInsets.only(left: diamondCardPadding),
        child: Container(
          height: 100.h,
          width: 70.w,
          decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(ImageAssets.aceD),
              ),
              border: Border.all(color: Colors.white, width: 3.w)),
        ),
      ),
    );
    emit(state.copyWith(requestState: RequestState.success));
  }

  void removeDiamondStack() {
    emit(state.copyWith(requestState: RequestState.loading));
    diamondStackList.removeLast();
    emit(state.copyWith(requestState: RequestState.success));
  }

  void addImage() {
    controller.forward(from: 0.0);
  }

  void selectRadioTeams(int? newVal) {
    emit(state.copyWith(requestState: RequestState.loading));
    radioValue = newVal;
    emit(state.copyWith(requestState: RequestState.success));
  }

  ///Start Change Queens Scope

  bool isQueenH = false;
  bool isQueenHDoubleGame = false;

  void changeQueenH() {
    emit(state.copyWith(requestState: RequestState.loading));
    isQueenH = !isQueenH;
    if (isQueenH) {
      if (isQueenHDoubleGame) {
        totalQueens -= 50;
        totalDouble += 25;
      } else {
        totalQueens -= 25;
        totalDouble += 25;
      }
    } else {
      if (isQueenHDoubleGame) {
        totalQueens += 50;
        totalDouble -= 25;
      } else {
        totalQueens += 25;
        totalDouble -= 25;
      }
    }
    emit(state.copyWith(requestState: RequestState.success));
  }

  void changeQueenHDoubleGame() {
    emit(state.copyWith(requestState: RequestState.loading));
    isQueenHDoubleGame = !isQueenHDoubleGame;
    if (isQueenHDoubleGame) {
      totalDouble += 25;
    } else {
      totalDouble -= 25;
    }
    emit(state.copyWith(requestState: RequestState.success));
  }

  bool isQueenC = false;
  bool isQueenCDoubleGame = false;

  void changeQueenC() {
    emit(state.copyWith(requestState: RequestState.loading));
    isQueenC = !isQueenC;
    if (isQueenC) {
      if (isQueenCDoubleGame) {
        totalQueens -= 50;
        totalDouble += 25;
      } else {
        totalQueens -= 25;
        totalDouble += 25;
      }
    } else {
      if (isQueenCDoubleGame) {
        totalQueens += 50;
        totalDouble -= 25;
      } else {
        totalQueens += 25;
        totalDouble -= 25;
      }
    }
    emit(state.copyWith(requestState: RequestState.success));
  }

  void changeQueenCDoubleGame() {
    emit(state.copyWith(requestState: RequestState.loading));
    isQueenCDoubleGame = !isQueenCDoubleGame;
    if (isQueenCDoubleGame) {
      totalDouble += 25;
    } else {
      totalDouble -= 25;
    }
    emit(state.copyWith(requestState: RequestState.success));
  }

  bool isQueenS = false;
  bool isQueenSDoubleGame = false;

  void changeQueenS() {
    emit(state.copyWith(requestState: RequestState.loading));
    isQueenS = !isQueenS;
    if (isQueenS) {
      if (isQueenSDoubleGame) {
        totalQueens -= 50;
        totalDouble += 25;
      } else {
        totalQueens -= 25;
        totalDouble += 25;
      }
    } else {
      if (isQueenSDoubleGame) {
        totalQueens += 50;
        totalDouble -= 25;
      } else {
        totalQueens += 25;
        totalDouble -= 25;
      }
    }
    emit(state.copyWith(requestState: RequestState.success));
  }

  void changeQueenSDoubleGame() {
    emit(state.copyWith(requestState: RequestState.loading));
    isQueenSDoubleGame = !isQueenSDoubleGame;
    if (isQueenSDoubleGame) {
      totalDouble += 25;
    } else {
      totalDouble -= 25;
    }
    emit(state.copyWith(requestState: RequestState.success));
  }

  bool isQueenD = false;
  bool isQueenDDoubleGame = false;

  void changeQueenD() {
    emit(state.copyWith(requestState: RequestState.loading));
    isQueenD = !isQueenD;
    if (isQueenD) {
      if (isQueenDDoubleGame) {
        totalQueens -= 50;
        totalDouble += 25;
      } else {
        totalQueens -= 25;
        totalDouble += 25;
      }
    } else {
      if (isQueenDDoubleGame) {
        totalQueens += 50;
        totalDouble -= 25;
      } else {
        totalQueens += 25;
        totalDouble -= 25;
      }
    }
    emit(state.copyWith(requestState: RequestState.success));
  }

  void changeQueenDDoubleGame() {
    emit(state.copyWith(requestState: RequestState.loading));
    isQueenDDoubleGame = !isQueenDDoubleGame;
    if (isQueenDDoubleGame) {
      totalDouble += 25;
    } else {
      totalDouble -= 25;
    }
    emit(state.copyWith(requestState: RequestState.success));
  }

  ///End Change Queens Scope

  ///Start Change King Scope

  bool isKingHDoubleGame = false;
  bool isKingH = false;

  void changeKingHDoubleGame() {
    emit(state.copyWith(requestState: RequestState.loading));
    isKingHDoubleGame = !isKingHDoubleGame;
    if (isKingHDoubleGame) {
      totalDouble += 75;
    } else {
      totalDouble -= 75;
    }
    emit(state.copyWith(requestState: RequestState.success));
  }

  void changeKingH() {
    emit(state.copyWith(requestState: RequestState.loading));
    isKingH = !isKingH;
    if (isKingH) {
      if (isKingHDoubleGame) {
        totalKing -= 150;
        totalDouble += 75;
      } else {
        totalKing -= 75;
      }
    } else {
      if (isKingHDoubleGame) {
        totalKing += 150;
        totalDouble -= 25;
      } else {
        totalKing += 75;
      }
    }
    emit(state.copyWith(requestState: RequestState.success));
  }

  ///End Change King Scope

  ///Start Change Diamond Scope

  double selectedDiamondNum = 0;

  void changeDiamondSlider(double value) {
    emit(state.copyWith(requestState: RequestState.loading));
    selectedDiamondNum = value;
    emit(state.copyWith(requestState: RequestState.success));
  }

  ///End Change Diamond Scope

  ///Start wig Scope

  double wigCount = 0;

  void wigCounterPlus() {
    if (wigCount < 13) {
      addWigStack();
      wigCount++;
      totalWig -= 15;
      wigCardPadding += 12;
    }
    emit(state.copyWith(requestState: RequestState.success));
  }

  void wigCounterMinus() {
    if (wigCount > 0) {
      removeWigStack();
      wigCount--;
      totalWig += 15;
      wigCardPadding -= 12;
    }
    emit(state.copyWith(requestState: RequestState.success));
  }

  //End wig Scope

  ///Start Kingdoms Show in Result Screen

  bool isFirstKingdomShow = false;
  bool isSecondKingdomShow = false;
  bool isThirdKingdomShow = false;
  bool isFourthKingdomShow = false;

  void firstKingdomShow() {
    emit(state.copyWith(requestState: RequestState.loading));
    isFirstKingdomShow = !isFirstKingdomShow;
    isSecondKingdomShow = false;
    isThirdKingdomShow = false;
    isFourthKingdomShow = false;
    emit(state.copyWith(requestState: RequestState.success));
  }

  void secondKingdomShow() {
    emit(state.copyWith(requestState: RequestState.loading));
    isSecondKingdomShow = !isSecondKingdomShow;
    isFirstKingdomShow = false;
    isThirdKingdomShow = false;
    isFourthKingdomShow = false;
    emit(state.copyWith(requestState: RequestState.success));
  }

  void thirdKingdomShow() {
    emit(state.copyWith(requestState: RequestState.loading));
    isThirdKingdomShow = !isThirdKingdomShow;
    isFirstKingdomShow = false;
    isSecondKingdomShow = false;
    isFourthKingdomShow = false;
    emit(state.copyWith(requestState: RequestState.success));
  }

  void fourthKingdomShow() {
    emit(state.copyWith(requestState: RequestState.loading));
    isFourthKingdomShow = !isFourthKingdomShow;
    isFirstKingdomShow = false;
    isSecondKingdomShow = false;
    isThirdKingdomShow = false;
    emit(state.copyWith(requestState: RequestState.success));
  }

  ///End Kingdoms Show in Result Screen

  ///Start Calculate Scoop

  Future<void> calculateCCTeamRound(BuildContext context) async {
    firstCase = (totalWig +
            (selectedDiamondNum.toInt() * -10) +
            totalKing +
            totalQueens) +
        (totalDouble + (totalKing + totalQueens));
    secondCase = -500 - firstCase;
    if (roundNumber == k1R1 || roundNumber == k1R2) {
      await setCCFirstKingdomData();
      await getCCFirstKingdomData();
    } else if (roundNumber == k2R1 || roundNumber == k2R2) {
      await setCCSecondKingdomData();
      await getCCSecondKingdomData();
    } else if (roundNumber == k3R1 || roundNumber == k3R2) {
      await setCCThirdKingdomData();
      await getCCThirdKingdomData();
    } else {
      await setCCFourthKingdomData();
      await getCCFourthKingdomData();
    }
    calculateTotalCCTeams();
  }

  Future<void> calculateComplexTrixTeamRound(BuildContext context) async {
    firstCase = (totalWig +
            (selectedDiamondNum.toInt() * -10) +
            totalKing +
            totalQueens) +
        (totalDouble + (totalKing + totalQueens));
    secondCase = -500 - firstCase;
    if (roundNumber == firstKingdomTrix) {
      await setComplexTrixFirstKingdomData();
      await getTrixFirstKingdomData();
    } else if (roundNumber == secondKingdomTrix) {
      await setComplexTrixSecondKingdomData();
      await getTrixSecondKingdomData();
    } else if (roundNumber == thirdKingdomTrix) {
      await setComplexTrixThirdKingdomData();
      await getTrixThirdKingdomData();
    } else {
      await setComplexTrixFourthKingdomData();
      await getTrixFourthKingdomData();
    }
    calculateTotalTrixTeams();
  }

  Future<void> calculateTrixTeamRound(BuildContext context) async {
    if (roundNumber == firstKingdomTrix) {
      await setTrixFirstKingdomData();
      await getTrixFirstKingdomData();
    } else if (roundNumber == secondKingdomTrix) {
      await setTrixSecondKingdomData();
      await getTrixSecondKingdomData();
    } else if (roundNumber == thirdKingdomTrix) {
      await setTrixThirdKingdomData();
      await getTrixThirdKingdomData();
    } else {
      await setTrixFourthKingdomData();
      await getTrixFourthKingdomData();
    }
    calculateTotalTrixTeams();
  }

  void calculateTotalCCTeams() {
    totalFirstTeam = ccFirstKingdomData.totalFirstTeam +
        ccSecondKingdomData.totalFirstTeam +
        ccThirdKingdomData.totalFirstTeam +
        ccFourthKingdomData.totalFirstTeam;
    totalSecondTeam = ccFirstKingdomData.totalSecondTeam +
        ccSecondKingdomData.totalSecondTeam +
        ccThirdKingdomData.totalSecondTeam +
        ccFourthKingdomData.totalSecondTeam;
  }

  void calculateTotalTrixTeams() {
    totalFirstTeam = trixFirstKingdomData.totalFirstTeam +
        trixSecondKingdomData.totalFirstTeam +
        trixThirdKingdomData.totalFirstTeam +
        trixFourthKingdomData.totalFirstTeam;
    totalSecondTeam = trixFirstKingdomData.totalSecondTeam +
        trixSecondKingdomData.totalSecondTeam +
        trixThirdKingdomData.totalSecondTeam +
        trixFourthKingdomData.totalSecondTeam;
  }

  Future<void> setCCFirstKingdomData() async {
    CCKingdomModel kingdomModel =
        await sl<GetCCFirstKingdomDataUseCase>().call(const NoParameter());
    if (roundNumber == k1R1) {
      if (radioValue == 1) {
        kingdomModel.firstRoundFirstTeam = firstCase;
        kingdomModel.firstRoundSecondTeam = secondCase;
      } else {
        kingdomModel.firstRoundFirstTeam = secondCase;
        kingdomModel.firstRoundSecondTeam = firstCase;
      }
      kingdomModel.totalFirstTeam = (kingdomModel.firstRoundFirstTeam +
          kingdomModel.secondRoundFirstTeam);
      kingdomModel.totalSecondTeam = (kingdomModel.firstRoundSecondTeam +
          kingdomModel.secondRoundSecondTeam);
    } else {
      if (radioValue == 1) {
        kingdomModel.secondRoundFirstTeam = firstCase;
        kingdomModel.secondRoundSecondTeam = secondCase;
      } else {
        kingdomModel.secondRoundFirstTeam = secondCase;
        kingdomModel.secondRoundSecondTeam = firstCase;
      }
      kingdomModel.totalFirstTeam = (kingdomModel.firstRoundFirstTeam +
          kingdomModel.secondRoundFirstTeam);
      kingdomModel.totalSecondTeam = (kingdomModel.firstRoundSecondTeam +
          kingdomModel.secondRoundSecondTeam);
    }
    await sl<SetCCFirstKingdomDataUseCase>()
        .call(SetCCKingdomDataParameter(kingdomModel: kingdomModel));
  }

  Future<void> setCCSecondKingdomData() async {
    CCKingdomModel kingdomModel =
        await sl<GetCCSecondKingdomDataUseCase>().call(const NoParameter());
    if (roundNumber == k2R1) {
      if (radioValue == 1) {
        kingdomModel.firstRoundFirstTeam = firstCase;
        kingdomModel.firstRoundSecondTeam = secondCase;
      } else {
        kingdomModel.firstRoundFirstTeam = secondCase;
        kingdomModel.firstRoundSecondTeam = firstCase;
      }
      kingdomModel.totalFirstTeam = (kingdomModel.firstRoundFirstTeam +
          kingdomModel.secondRoundFirstTeam);
      kingdomModel.totalSecondTeam = (kingdomModel.firstRoundSecondTeam +
          kingdomModel.secondRoundSecondTeam);
    } else {
      if (radioValue == 1) {
        kingdomModel.secondRoundFirstTeam = firstCase;
        kingdomModel.secondRoundSecondTeam = secondCase;
      } else {
        kingdomModel.secondRoundFirstTeam = secondCase;
        kingdomModel.secondRoundSecondTeam = firstCase;
      }
      kingdomModel.totalFirstTeam = (kingdomModel.firstRoundFirstTeam +
          kingdomModel.secondRoundFirstTeam);
      kingdomModel.totalSecondTeam = (kingdomModel.firstRoundSecondTeam +
          kingdomModel.secondRoundSecondTeam);
    }
    await sl<SetCCSecondKingdomDataUseCase>()
        .call(SetCCKingdomDataParameter(kingdomModel: kingdomModel));
  }

  Future<void> setCCThirdKingdomData() async {
    CCKingdomModel kingdomModel =
        await sl<GetCCThirdKingdomDataUseCase>().call(const NoParameter());
    if (roundNumber == k3R1) {
      if (radioValue == 1) {
        kingdomModel.firstRoundFirstTeam = firstCase;
        kingdomModel.firstRoundSecondTeam = secondCase;
      } else {
        kingdomModel.firstRoundFirstTeam = secondCase;
        kingdomModel.firstRoundSecondTeam = firstCase;
      }
      kingdomModel.totalFirstTeam = (kingdomModel.firstRoundFirstTeam +
          kingdomModel.secondRoundFirstTeam);
      kingdomModel.totalSecondTeam = (kingdomModel.firstRoundSecondTeam +
          kingdomModel.secondRoundSecondTeam);
    } else {
      if (radioValue == 1) {
        kingdomModel.secondRoundFirstTeam = firstCase;
        kingdomModel.secondRoundSecondTeam = secondCase;
      } else {
        kingdomModel.secondRoundFirstTeam = secondCase;
        kingdomModel.secondRoundSecondTeam = firstCase;
      }
      kingdomModel.totalFirstTeam = (kingdomModel.firstRoundFirstTeam +
          kingdomModel.secondRoundFirstTeam);
      kingdomModel.totalSecondTeam = (kingdomModel.firstRoundSecondTeam +
          kingdomModel.secondRoundSecondTeam);
    }
    await sl<SetCCThirdKingdomDataUseCase>()
        .call(SetCCKingdomDataParameter(kingdomModel: kingdomModel));
  }

  Future<void> setCCFourthKingdomData() async {
    CCKingdomModel kingdomModel =
        await sl<GetCCFourthKingdomDataUseCase>().call(const NoParameter());
    if (roundNumber == k4R1) {
      if (radioValue == 1) {
        kingdomModel.firstRoundFirstTeam = firstCase;
        kingdomModel.firstRoundSecondTeam = secondCase;
      } else {
        kingdomModel.firstRoundFirstTeam = secondCase;
        kingdomModel.firstRoundSecondTeam = firstCase;
      }
      kingdomModel.totalFirstTeam = (kingdomModel.firstRoundFirstTeam +
          kingdomModel.secondRoundFirstTeam);
      kingdomModel.totalSecondTeam = (kingdomModel.firstRoundSecondTeam +
          kingdomModel.secondRoundSecondTeam);
    } else {
      if (radioValue == 1) {
        kingdomModel.secondRoundFirstTeam = firstCase;
        kingdomModel.secondRoundSecondTeam = secondCase;
      } else {
        kingdomModel.secondRoundFirstTeam = secondCase;
        kingdomModel.secondRoundSecondTeam = firstCase;
      }
      kingdomModel.totalFirstTeam = (kingdomModel.firstRoundFirstTeam +
          kingdomModel.secondRoundFirstTeam);
      kingdomModel.totalSecondTeam = (kingdomModel.firstRoundSecondTeam +
          kingdomModel.secondRoundSecondTeam);
    }

    await sl<SetCCFourthKingdomDataUseCase>()
        .call(SetCCKingdomDataParameter(kingdomModel: kingdomModel));
  }

  CCKingdomModel ccFirstKingdomData = CCKingdomModel();
  CCKingdomModel ccSecondKingdomData = CCKingdomModel();
  CCKingdomModel ccThirdKingdomData = CCKingdomModel();
  CCKingdomModel ccFourthKingdomData = CCKingdomModel();

  Future<CCKingdomModel> getCCFirstKingdomData() async {
    ccFirstKingdomData =
        await sl<GetCCFirstKingdomDataUseCase>().call(const NoParameter());
    emit(state.copyWith(requestState: RequestState.success));
    return ccFirstKingdomData;
  }

  Future<CCKingdomModel> getCCSecondKingdomData() async {
    ccSecondKingdomData =
        await sl<GetCCSecondKingdomDataUseCase>().call(const NoParameter());
    emit(state.copyWith(requestState: RequestState.success));
    return ccSecondKingdomData;
  }

  Future<CCKingdomModel> getCCThirdKingdomData() async {
    ccThirdKingdomData =
        await sl<GetCCThirdKingdomDataUseCase>().call(const NoParameter());
    emit(state.copyWith(requestState: RequestState.success));
    return ccThirdKingdomData;
  }

  Future<CCKingdomModel> getCCFourthKingdomData() async {
    ccFourthKingdomData =
        await sl<GetCCFourthKingdomDataUseCase>().call(const NoParameter());
    emit(state.copyWith(requestState: RequestState.success));
    return ccFourthKingdomData;
  }

  TrixKingdomModel trixFirstKingdomData = TrixKingdomModel();
  TrixKingdomModel trixSecondKingdomData = TrixKingdomModel();
  TrixKingdomModel trixThirdKingdomData = TrixKingdomModel();
  TrixKingdomModel trixFourthKingdomData = TrixKingdomModel();

  Future<void> setTrixFirstKingdomData() async {
    TrixKingdomModel kingdomModel =
        await sl<GetTrixFirstKingdomDataUseCase>().call(const NoParameter());
    kingdomModel.trixFirstTeam = trixCaseFirstTeam;
    kingdomModel.trixSecondTeam = trixCaseSecondTeam;
    kingdomModel.totalFirstTeam =
        kingdomModel.complexFirstTeam + kingdomModel.trixFirstTeam;
    kingdomModel.totalSecondTeam =
        kingdomModel.complexSecondTeam + kingdomModel.trixSecondTeam;
    await sl<SetTrixFirstKingdomDataUseCase>()
        .call(SetTrixKingdomDataParameter(trixKingdomModel: kingdomModel));
  }

  Future<void> setTrixSecondKingdomData() async {
    TrixKingdomModel kingdomModel =
        await sl<GetTrixSecondKingdomDataUseCase>().call(const NoParameter());
    kingdomModel.trixFirstTeam = trixCaseFirstTeam;
    kingdomModel.trixSecondTeam = trixCaseSecondTeam;
    kingdomModel.totalFirstTeam =
        kingdomModel.complexFirstTeam + kingdomModel.trixFirstTeam;
    kingdomModel.totalSecondTeam =
        kingdomModel.complexSecondTeam + kingdomModel.trixSecondTeam;
    await sl<SetTrixSecondKingdomDataUseCase>()
        .call(SetTrixKingdomDataParameter(trixKingdomModel: kingdomModel));
  }

  Future<void> setTrixThirdKingdomData() async {
    TrixKingdomModel kingdomModel =
        await sl<GetTrixThirdKingdomDataUseCase>().call(const NoParameter());
    kingdomModel.trixFirstTeam = trixCaseFirstTeam;
    kingdomModel.trixSecondTeam = trixCaseSecondTeam;
    kingdomModel.totalFirstTeam =
        kingdomModel.complexFirstTeam + kingdomModel.trixFirstTeam;
    kingdomModel.totalSecondTeam =
        kingdomModel.complexSecondTeam + kingdomModel.trixSecondTeam;
    await sl<SetTrixThirdKingdomDataUseCase>()
        .call(SetTrixKingdomDataParameter(trixKingdomModel: kingdomModel));
  }

  Future<void> setTrixFourthKingdomData() async {
    TrixKingdomModel kingdomModel =
        await sl<GetTrixFourthKingdomDataUseCase>().call(const NoParameter());
    kingdomModel.trixFirstTeam = trixCaseFirstTeam;
    kingdomModel.trixSecondTeam = trixCaseSecondTeam;
    kingdomModel.totalFirstTeam =
        kingdomModel.complexFirstTeam + kingdomModel.trixFirstTeam;
    kingdomModel.totalSecondTeam =
        kingdomModel.complexSecondTeam + kingdomModel.trixSecondTeam;
    await sl<SetTrixFourthKingdomDataUseCase>()
        .call(SetTrixKingdomDataParameter(trixKingdomModel: kingdomModel));
  }

  Future<void> setComplexTrixFirstKingdomData() async {
    TrixKingdomModel kingdomModel =
        await sl<GetTrixFirstKingdomDataUseCase>().call(const NoParameter());
    if (radioValue == 1) {
      kingdomModel.complexFirstTeam = firstCase;
      kingdomModel.complexSecondTeam = secondCase;
    } else {
      kingdomModel.complexFirstTeam = secondCase;
      kingdomModel.complexSecondTeam = firstCase;
    }
    kingdomModel.totalFirstTeam =
        kingdomModel.complexFirstTeam + kingdomModel.trixFirstTeam;
    kingdomModel.totalSecondTeam =
        kingdomModel.complexSecondTeam + kingdomModel.trixSecondTeam;
    await sl<SetTrixFirstKingdomDataUseCase>()
        .call(SetTrixKingdomDataParameter(trixKingdomModel: kingdomModel));
  }

  Future<void> setComplexTrixSecondKingdomData() async {
    TrixKingdomModel kingdomModel =
        await sl<GetTrixSecondKingdomDataUseCase>().call(const NoParameter());
    if (radioValue == 1) {
      kingdomModel.complexFirstTeam = firstCase;
      kingdomModel.complexSecondTeam = secondCase;
    } else {
      kingdomModel.complexFirstTeam = secondCase;
      kingdomModel.complexSecondTeam = firstCase;
    }
    kingdomModel.totalFirstTeam =
        kingdomModel.complexFirstTeam + kingdomModel.trixFirstTeam;
    kingdomModel.totalSecondTeam =
        kingdomModel.complexSecondTeam + kingdomModel.trixSecondTeam;
    await sl<SetTrixSecondKingdomDataUseCase>()
        .call(SetTrixKingdomDataParameter(trixKingdomModel: kingdomModel));
  }

  Future<void> setComplexTrixThirdKingdomData() async {
    TrixKingdomModel kingdomModel =
        await sl<GetTrixThirdKingdomDataUseCase>().call(const NoParameter());
    if (radioValue == 1) {
      kingdomModel.complexFirstTeam = firstCase;
      kingdomModel.complexSecondTeam = secondCase;
    } else {
      kingdomModel.complexFirstTeam = secondCase;
      kingdomModel.complexSecondTeam = firstCase;
    }
    kingdomModel.totalFirstTeam =
        kingdomModel.complexFirstTeam + kingdomModel.trixFirstTeam;
    kingdomModel.totalSecondTeam =
        kingdomModel.complexSecondTeam + kingdomModel.trixSecondTeam;
    await sl<SetTrixThirdKingdomDataUseCase>()
        .call(SetTrixKingdomDataParameter(trixKingdomModel: kingdomModel));
  }

  Future<void> setComplexTrixFourthKingdomData() async {
    TrixKingdomModel kingdomModel =
        await sl<GetTrixFourthKingdomDataUseCase>().call(const NoParameter());
    if (radioValue == 1) {
      kingdomModel.complexFirstTeam = firstCase;
      kingdomModel.complexSecondTeam = secondCase;
    } else {
      kingdomModel.complexFirstTeam = secondCase;
      kingdomModel.complexSecondTeam = firstCase;
    }
    kingdomModel.totalFirstTeam =
        kingdomModel.complexFirstTeam + kingdomModel.trixFirstTeam;
    kingdomModel.totalSecondTeam =
        kingdomModel.complexSecondTeam + kingdomModel.trixSecondTeam;
    await sl<SetTrixFourthKingdomDataUseCase>()
        .call(SetTrixKingdomDataParameter(trixKingdomModel: kingdomModel));
  }

  Future<TrixKingdomModel> getTrixFirstKingdomData() async {
    trixFirstKingdomData =
        await sl<GetTrixFirstKingdomDataUseCase>().call(const NoParameter());
    emit(state.copyWith(requestState: RequestState.success));
    return trixFirstKingdomData;
  }

  Future<TrixKingdomModel> getTrixSecondKingdomData() async {
    trixSecondKingdomData =
        await sl<GetTrixSecondKingdomDataUseCase>().call(const NoParameter());
    emit(state.copyWith(requestState: RequestState.success));
    return trixSecondKingdomData;
  }

  Future<TrixKingdomModel> getTrixThirdKingdomData() async {
    trixThirdKingdomData =
        await sl<GetTrixThirdKingdomDataUseCase>().call(const NoParameter());
    emit(state.copyWith(requestState: RequestState.success));
    return trixThirdKingdomData;
  }

  Future<TrixKingdomModel> getTrixFourthKingdomData() async {
    trixFourthKingdomData =
        await sl<GetTrixFourthKingdomDataUseCase>().call(const NoParameter());
    emit(state.copyWith(requestState: RequestState.success));
    return trixFourthKingdomData;
  }

  HiveArchiveDataModel listArchiveData =
      HiveArchiveDataModel(listArchiveData: []);

  Future<void> setArchiveData() async {
    HiveArchiveDataModel listArchiveData =
        await sl<GetArchiveDataUseCase>().call(const NoParameter());

    ArchiveDataModel archiveDataModel = ArchiveDataModel();
    archiveDataModel.firstKingdomFirstTeamFirstRound =
        ccFirstKingdomData.firstRoundFirstTeam;
    archiveDataModel.firstKingdomFirstTeamSecondRound =
        ccFirstKingdomData.secondRoundFirstTeam;
    archiveDataModel.firstKingdomSecondTeamFirstRound =
        ccFirstKingdomData.firstRoundSecondTeam;
    archiveDataModel.firstKingdomSecondTeamSecondRound =
        ccFirstKingdomData.secondRoundSecondTeam;
    archiveDataModel.ccFirstKingdomTotalFirstTeam =
        ccFirstKingdomData.totalFirstTeam;
    archiveDataModel.ccFirstKingdomTotalSecondTeam =
        ccFirstKingdomData.totalSecondTeam;
    archiveDataModel.secondKingdomFirstTeamFirstRound =
        ccSecondKingdomData.firstRoundFirstTeam;
    archiveDataModel.secondKingdomFirstTeamSecondRound =
        ccSecondKingdomData.secondRoundFirstTeam;
    archiveDataModel.secondKingdomSecondTeamFirstRound =
        ccSecondKingdomData.firstRoundSecondTeam;
    archiveDataModel.secondKingdomSecondTeamSecondRound =
        ccSecondKingdomData.secondRoundSecondTeam;
    archiveDataModel.ccSecondKingdomTotalFirstTeam =
        ccSecondKingdomData.totalFirstTeam;
    archiveDataModel.ccSecondKingdomTotalSecondTeam =
        ccSecondKingdomData.totalSecondTeam;
    archiveDataModel.thirdKingdomFirstTeamFirstRound =
        ccThirdKingdomData.firstRoundFirstTeam;
    archiveDataModel.thirdKingdomFirstTeamSecondRound =
        ccThirdKingdomData.secondRoundFirstTeam;
    archiveDataModel.thirdKingdomSecondTeamFirstRound =
        ccThirdKingdomData.firstRoundSecondTeam;
    archiveDataModel.thirdKingdomSecondTeamSecondRound =
        ccThirdKingdomData.secondRoundSecondTeam;
    archiveDataModel.ccThirdKingdomTotalFirstTeam =
        ccThirdKingdomData.totalFirstTeam;
    archiveDataModel.ccThirdKingdomTotalSecondTeam =
        ccThirdKingdomData.totalSecondTeam;
    archiveDataModel.fourthKingdomFirstTeamFirstRound =
        ccFourthKingdomData.firstRoundFirstTeam;
    archiveDataModel.fourthKingdomFirstTeamSecondRound =
        ccFourthKingdomData.secondRoundFirstTeam;
    archiveDataModel.fourthKingdomSecondTeamFirstRound =
        ccFourthKingdomData.firstRoundSecondTeam;
    archiveDataModel.fourthKingdomSecondTeamSecondRound =
        ccFourthKingdomData.secondRoundSecondTeam;
    archiveDataModel.ccFourthKingdomTotalFirstTeam =
        ccFourthKingdomData.totalFirstTeam;
    archiveDataModel.ccFourthKingdomTotalSecondTeam =
        ccFourthKingdomData.totalSecondTeam;
    archiveDataModel.firstKingdomFirstTeamComplex =
        trixFirstKingdomData.complexFirstTeam;
    archiveDataModel.firstKingdomFirstTeamTrix =
        trixFirstKingdomData.trixFirstTeam;
    archiveDataModel.firstKingdomSecondTeamComplex =
        trixFirstKingdomData.complexSecondTeam;
    archiveDataModel.firstKingdomSecondTeamTrix =
        trixFirstKingdomData.trixSecondTeam;
    archiveDataModel.trixFirstKingdomTotalFirstTeam =
        trixFirstKingdomData.totalFirstTeam;
    archiveDataModel.trixFirstKingdomTotalSecondTeam =
        trixFirstKingdomData.totalSecondTeam;
    archiveDataModel.secondKingdomFirstTeamComplex =
        trixSecondKingdomData.complexFirstTeam;
    archiveDataModel.secondKingdomFirstTeamTrix =
        trixSecondKingdomData.trixFirstTeam;
    archiveDataModel.secondKingdomSecondTeamComplex =
        trixSecondKingdomData.complexSecondTeam;
    archiveDataModel.secondKingdomSecondTeamTrix =
        trixSecondKingdomData.trixSecondTeam;
    archiveDataModel.trixSecondKingdomTotalFirstTeam =
        trixSecondKingdomData.totalFirstTeam;
    archiveDataModel.trixSecondKingdomTotalSecondTeam =
        trixSecondKingdomData.totalSecondTeam;
    archiveDataModel.thirdKingdomFirstTeamComplex =
        trixThirdKingdomData.complexFirstTeam;
    archiveDataModel.thirdKingdomFirstTeamTrix =
        trixThirdKingdomData.trixFirstTeam;
    archiveDataModel.thirdKingdomSecondTeamComplex =
        trixThirdKingdomData.complexSecondTeam;
    archiveDataModel.thirdKingdomSecondTeamTrix =
        trixThirdKingdomData.trixSecondTeam;
    archiveDataModel.trixThirdKingdomTotalFirstTeam =
        trixThirdKingdomData.totalFirstTeam;
    archiveDataModel.trixThirdKingdomTotalSecondTeam =
        trixThirdKingdomData.totalSecondTeam;
    archiveDataModel.fourthKingdomFirstTeamComplex =
        trixFourthKingdomData.complexFirstTeam;
    archiveDataModel.fourthKingdomFirstTeamTrix =
        trixFourthKingdomData.trixFirstTeam;
    archiveDataModel.fourthKingdomSecondTeamComplex =
        trixFourthKingdomData.complexSecondTeam;
    archiveDataModel.fourthKingdomSecondTeamTrix =
        trixFourthKingdomData.trixSecondTeam;
    archiveDataModel.trixFourthKingdomTotalFirstTeam =
        trixFourthKingdomData.totalFirstTeam;
    archiveDataModel.trixFourthKingdomTotalSecondTeam =
        trixFourthKingdomData.totalSecondTeam;
    archiveDataModel.firstTeamName = firstTeamName;
    archiveDataModel.secondTeamName = secondTeamName;
    archiveDataModel.winnerName =
        totalFirstTeam > totalSecondTeam ? firstTeamName : secondTeamName;
    archiveDataModel.loserName =
        totalFirstTeam > totalSecondTeam ? secondTeamName : firstTeamName;
    archiveDataModel.typeGame = typeGame;
    archiveDataModel.totalFirstTeam = totalFirstTeam;
    archiveDataModel.totalSecondTeam = totalSecondTeam;
    archiveDataModel.typeGame = typeGame;
    DateTime now = DateTime.now();
    String dateOfGame = DateFormat('EEEE, dd/MM/yyyy', 'ar').format(now);
    archiveDataModel.dateOfGame = dateOfGame;
    listArchiveData.listArchiveData.add(archiveDataModel);
    await sl<SetArchiveDataUseCase>().call(
        SetArchiveDataParameter(listHiveArchiveDataModel: listArchiveData));
  }

  Future<HiveArchiveDataModel> getArchiveData() async {
    listArchiveData =
        await sl<GetArchiveDataUseCase>().call(const NoParameter());
    emit(state.copyWith(requestState: RequestState.success));
    return listArchiveData;
  }

  bool isCompleteTrixGame() {
    if ((trixFirstKingdomData.complexFirstTeam != 0 ||
            trixFirstKingdomData.complexSecondTeam != 0) &&
        (trixFirstKingdomData.trixFirstTeam != 0 ||
            trixFirstKingdomData.trixSecondTeam != 0) &&
        (trixSecondKingdomData.complexFirstTeam != 0 ||
            trixSecondKingdomData.complexSecondTeam != 0) &&
        (trixSecondKingdomData.trixFirstTeam != 0 ||
            trixSecondKingdomData.trixSecondTeam != 0) &&
        (trixThirdKingdomData.complexFirstTeam != 0 ||
            trixThirdKingdomData.complexSecondTeam != 0) &&
        (trixThirdKingdomData.trixFirstTeam != 0 ||
            trixThirdKingdomData.trixSecondTeam != 0) &&
        (trixFourthKingdomData.complexFirstTeam != 0 ||
            trixFourthKingdomData.complexSecondTeam != 0) &&
        (trixFourthKingdomData.trixFirstTeam != 0 ||
            trixFourthKingdomData.trixSecondTeam != 0)) {
      return true;
    }
    return false;
  }

  bool isCompleteComplexGame() {
    if ((ccFirstKingdomData.firstRoundFirstTeam != 0 ||
                ccFirstKingdomData.firstRoundSecondTeam != 0) &&
            (ccFirstKingdomData.secondRoundFirstTeam != 0 ||
                ccFirstKingdomData.secondRoundSecondTeam != 0) &&
            (ccSecondKingdomData.firstRoundFirstTeam != 0 ||
                ccSecondKingdomData.firstRoundSecondTeam != 0) &&
            (ccSecondKingdomData.secondRoundFirstTeam != 0 ||
                ccSecondKingdomData.secondRoundSecondTeam != 0) &&
            (ccThirdKingdomData.firstRoundFirstTeam != 0 ||
                ccThirdKingdomData.firstRoundSecondTeam != 0) &&
            (ccThirdKingdomData.secondRoundFirstTeam != 0 ||
                ccThirdKingdomData.secondRoundSecondTeam != 0) &&
            (ccFourthKingdomData.firstRoundFirstTeam != 0 ||
                ccFourthKingdomData.firstRoundSecondTeam != 0) &&
            ccFourthKingdomData.secondRoundFirstTeam != 0 ||
        ccFourthKingdomData.secondRoundSecondTeam != 0) {
      return true;
    }
    return false;
  }

  String isFirstTeamWinner() {
    if (totalFirstTeam > totalSecondTeam) {
      return 'yes';
    } else if (totalSecondTeam > totalFirstTeam) {
      return 'no';
    }
    return 'yet';
  }

  bool isTrixSecondKingdomReady() {
    if ((trixFirstKingdomData.complexFirstTeam != 0 ||
            trixFirstKingdomData.complexSecondTeam != 0) &&
        (trixFirstKingdomData.trixFirstTeam != 0 ||
            trixFirstKingdomData.trixSecondTeam != 0)) {
      return true;
    }
    return false;
  }

  bool isTrixThirdKingdomReady() {
    if ((trixFirstKingdomData.complexFirstTeam != 0 ||
            trixFirstKingdomData.complexSecondTeam != 0) &&
        (trixFirstKingdomData.trixFirstTeam != 0 ||
            trixFirstKingdomData.trixSecondTeam != 0) &&
        (trixSecondKingdomData.complexFirstTeam != 0 ||
            trixSecondKingdomData.complexSecondTeam != 0) &&
        (trixSecondKingdomData.trixFirstTeam != 0 ||
            trixSecondKingdomData.trixSecondTeam != 0)) {
      return true;
    }
    return false;
  }

  bool isTrixFourthKingdomReady() {
    if ((trixFirstKingdomData.complexFirstTeam != 0 ||
            trixFirstKingdomData.complexSecondTeam != 0) &&
        (trixFirstKingdomData.trixFirstTeam != 0 ||
            trixFirstKingdomData.trixSecondTeam != 0) &&
        (trixSecondKingdomData.complexFirstTeam != 0 ||
            trixSecondKingdomData.complexSecondTeam != 0) &&
        (trixSecondKingdomData.trixFirstTeam != 0 ||
            trixSecondKingdomData.trixSecondTeam != 0) &&
        (trixThirdKingdomData.complexFirstTeam != 0 ||
            trixThirdKingdomData.complexSecondTeam != 0) &&
        (trixThirdKingdomData.trixFirstTeam != 0 ||
            trixThirdKingdomData.trixSecondTeam != 0)) {
      return true;
    }
    return false;
  }

  bool isComplexSecondKingdomReady() {
    if ((ccFirstKingdomData.firstRoundFirstTeam != 0 ||
            ccFirstKingdomData.firstRoundSecondTeam != 0) &&
        (ccFirstKingdomData.secondRoundFirstTeam != 0 ||
            ccFirstKingdomData.secondRoundSecondTeam != 0)) {
      return true;
    }
    return false;
  }

  bool isComplexThirdKingdomReady() {
    if ((ccFirstKingdomData.firstRoundFirstTeam != 0 ||
            ccFirstKingdomData.firstRoundSecondTeam != 0) &&
        (ccFirstKingdomData.secondRoundFirstTeam != 0 ||
            ccFirstKingdomData.secondRoundSecondTeam != 0) &&
        (ccSecondKingdomData.firstRoundFirstTeam != 0 ||
            ccSecondKingdomData.firstRoundSecondTeam != 0) &&
        (ccSecondKingdomData.secondRoundFirstTeam != 0 ||
            ccSecondKingdomData.secondRoundSecondTeam != 0)) {
      return true;
    }
    return false;
  }

  bool isComplexFourthKingdomReady() {
    if ((ccFirstKingdomData.firstRoundFirstTeam != 0 ||
            ccFirstKingdomData.firstRoundSecondTeam != 0) &&
        (ccFirstKingdomData.secondRoundFirstTeam != 0 ||
            ccFirstKingdomData.secondRoundSecondTeam != 0) &&
        (ccSecondKingdomData.firstRoundFirstTeam != 0 ||
            ccSecondKingdomData.firstRoundSecondTeam != 0) &&
        (ccSecondKingdomData.secondRoundFirstTeam != 0 ||
            ccSecondKingdomData.secondRoundSecondTeam != 0) &&
        (ccThirdKingdomData.firstRoundFirstTeam != 0 ||
            ccThirdKingdomData.firstRoundSecondTeam != 0) &&
        (ccThirdKingdomData.secondRoundFirstTeam != 0 ||
            ccThirdKingdomData.secondRoundSecondTeam != 0)) {
      return true;
    }
    return false;
  }

  ///End Calculate Scoop
  void complexClear() {
    emit(state.copyWith(requestState: RequestState.loading));
    totalDouble = 0;
    totalWig = 0;
    totalQueens = 0;
    totalKing = 0;
    selectedDiamondNum = 0;
    wigCount = 0;
    firstCase = 0;
    secondCase = 0;
    roundNumber = '';
    radioValue = 0;
    wigStackList = [];
    wigCardPadding = 0;
    isQueenH = false;
    isQueenHDoubleGame = false;
    isQueenS = false;
    isQueenSDoubleGame = false;
    isQueenD = false;
    isQueenDDoubleGame = false;
    isQueenC = false;
    isQueenCDoubleGame = false;
    isKingH = false;
    isKingHDoubleGame = false;
    isFirstKingdomShow = false;
    isSecondKingdomShow = false;
    isThirdKingdomShow = false;
    isFourthKingdomShow = false;
    wigStackList = [];
    emit(state.copyWith(requestState: RequestState.success));
  }

  void trixClear() {
    emit(state.copyWith(requestState: RequestState.loading));
    isFirstKingdomShow = false;
    isSecondKingdomShow = false;
    isThirdKingdomShow = false;
    isFourthKingdomShow = false;
    trixCaseFirstTeam = 0;
    trixCaseSecondTeam = 0;
    firstToggleIndex = 0;
    secondToggleIndex = 4;
    trixCaseFirstTeam = 350;
    trixCaseSecondTeam = 150;
    emit(state.copyWith(requestState: RequestState.success));
  }

  Future<void> clearHiveData() async {
    await Hive.openBox(firstCCKingdomBox);
    Hive.box(firstCCKingdomBox).clear();
    await Hive.openBox(secondCCKingdomBox);
    Hive.box(secondCCKingdomBox).clear();
    await Hive.openBox(thirdCCKingdomBox);
    Hive.box(thirdCCKingdomBox).clear();
    await Hive.openBox(fourthCCKingdomBox);
    Hive.box(fourthCCKingdomBox).clear();
    await Hive.openBox(fourthTrixKingdomBox);
    Hive.box(fourthTrixKingdomBox).clear();
    await Hive.openBox(firstTrixKingdomBox);
    Hive.box(firstTrixKingdomBox).clear();
    await Hive.openBox(secondTrixKingdomBox);
    Hive.box(secondTrixKingdomBox).clear();
    await Hive.openBox(thirdTrixKingdomBox);
    Hive.box(thirdTrixKingdomBox).clear();
    await Hive.openBox(fourthTrixKingdomBox);
    Hive.box(fourthTrixKingdomBox).clear();
  }

  void cleanGame() {
    emit(state.copyWith(requestState: RequestState.loading));
    complexClear();
    firstToggleIndex = 0;
    secondToggleIndex = 2;
    trixCaseFirstTeam = 0;
    trixCaseSecondTeam = 0;
    firstTeamName = '';
    secondTeamName = '';
    typeGame = '';
    totalFirstTeam = 0;
    totalSecondTeam = 0;
    ccFirstKingdomData = CCKingdomModel();
    ccSecondKingdomData = CCKingdomModel();
    ccThirdKingdomData = CCKingdomModel();
    ccFourthKingdomData = CCKingdomModel();
    trixFirstKingdomData = TrixKingdomModel();
    trixSecondKingdomData = TrixKingdomModel();
    trixThirdKingdomData = TrixKingdomModel();
    trixFourthKingdomData = TrixKingdomModel();
    emit(state.copyWith(requestState: RequestState.success));
  }

  void cleanBackComplexScreens() {
    emit(state.copyWith(requestState: RequestState.loading));
    isQueenS = false;
    isQueenH = false;
    isQueenC = false;
    isQueenD = false;
    isKingH = false;
    isQueenSDoubleGame = false;
    isQueenHDoubleGame = false;
    isQueenDDoubleGame = false;
    isQueenCDoubleGame = false;
    isKingHDoubleGame = false;
    totalQueens = 0;
    totalKing = 0;
    totalWig = 0;
    wigCount = 0;
    wigStackList = [];
    wigCardPadding = 0;
    selectedDiamondNum = 0;
    totalDouble = 0;
    radioValue = 0;
    isKingHDoubleGame = false;
    isFirstKingdomShow = false;
    isSecondKingdomShow = false;
    isThirdKingdomShow = false;
    isFourthKingdomShow = false;
    emit(state.copyWith(requestState: RequestState.success));
  }
}
