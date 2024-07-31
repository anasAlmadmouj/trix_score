import 'package:trix_score/core/imports/app_imports.dart';

class LocalDataSource extends BaseLocalDataSource {
  @override
  Future<void> setCCFirstKingdomData(SetCCKingdomDataParameter parameter) async {
    final firstBox = await Hive.openBox(firstCCKingdomBox);
    firstBox.put(firstCCKingdomKey, parameter.kingdomModel);
  }

  @override
  Future<void> setCCSecondKingdomData(SetCCKingdomDataParameter parameter) async {
    final secondBox = await Hive.openBox(secondCCKingdomBox);
    secondBox.put(secondCCKingdomKey, parameter.kingdomModel);
  }

  @override
  Future<void> setCCThirdKingdomData(SetCCKingdomDataParameter parameter) async {
    final thirdBox = await Hive.openBox(thirdCCKingdomBox);
    thirdBox.put(thirdCCKingdomKey, parameter.kingdomModel);
  }

  @override
  Future<void> setCCFourthKingdomData(SetCCKingdomDataParameter parameter) async {
    final fourthBox = await Hive.openBox(fourthCCKingdomBox);
    fourthBox.put(fourthCCKingdomKey, parameter.kingdomModel);
  }

  @override
  Future<CCKingdomModel> getCCFirstKingdomData(NoParameter parameter) async {
    CCKingdomModel kingdomModel = CCKingdomModel();
    final firstBox = await Hive.openBox(firstCCKingdomBox);
    CCKingdomModel result =
        firstBox.get(firstCCKingdomKey, defaultValue: kingdomModel);
    return result;
  }

  @override
  Future<CCKingdomModel> getCCSecondKingdomData(NoParameter parameter) async {
    CCKingdomModel kingdomModel = CCKingdomModel();
    final secondBox = await Hive.openBox(secondCCKingdomBox);
    CCKingdomModel result =
        secondBox.get(secondCCKingdomKey, defaultValue: kingdomModel);
    return result;
  }

  @override
  Future<CCKingdomModel> getCCThirdKingdomData(NoParameter parameter) async {
    CCKingdomModel kingdomModel = CCKingdomModel();
    final thirdBox = await Hive.openBox(thirdCCKingdomBox);
    CCKingdomModel result =
        thirdBox.get(thirdCCKingdomKey, defaultValue: kingdomModel);
    return result;
  }

  @override
  Future<CCKingdomModel> getCCFourthKingdomData(NoParameter parameter) async {
    CCKingdomModel kingdomModel = CCKingdomModel();
    final fourthBox = await Hive.openBox(fourthCCKingdomBox);
    CCKingdomModel result =
        fourthBox.get(fourthCCKingdomKey, defaultValue: kingdomModel);
    return result;
  }

  @override
  Future<TrixKingdomModel> getTrixFirstKingdomData(NoParameter parameter) async {
    TrixKingdomModel kingdomModel = TrixKingdomModel();
    final firstBox = await Hive.openBox(firstTrixKingdomBox);
    TrixKingdomModel result =
    firstBox.get(firstTrixKingdomKey, defaultValue: kingdomModel);
    return result;
  }

  @override
  Future<TrixKingdomModel> getTrixFourthKingdomData(NoParameter parameter) async {
    TrixKingdomModel kingdomModel = TrixKingdomModel();
    final fourthBox = await Hive.openBox(fourthTrixKingdomBox);
    TrixKingdomModel result =
    fourthBox.get(fourthTrixKingdomKey, defaultValue: kingdomModel);
    return result;
  }

  @override
  Future<TrixKingdomModel> getTrixSecondKingdomData(NoParameter parameter) async {
    TrixKingdomModel kingdomModel = TrixKingdomModel();
    final secondBox = await Hive.openBox(secondTrixKingdomBox);
    TrixKingdomModel result =
    secondBox.get(secondCCKingdomKey, defaultValue: kingdomModel);
    return result;
  }

  @override
  Future<TrixKingdomModel> getTrixThirdKingdomData(NoParameter parameter) async {
    TrixKingdomModel kingdomModel = TrixKingdomModel();
    final thirdBox = await Hive.openBox(thirdTrixKingdomBox);
    TrixKingdomModel result =
    thirdBox.get(thirdTrixKingdomKey, defaultValue: kingdomModel);
    return result;
  }

  @override
  Future<void> setTrixFirstKingdomData(SetTrixKingdomDataParameter parameter) async {
    final firstBox = await Hive.openBox(firstTrixKingdomBox);
    firstBox.put(firstTrixKingdomKey, parameter.trixKingdomModel);
  }

  @override
  Future<void> setTrixFourthKingdomData(SetTrixKingdomDataParameter parameter) async {
    final fourthBox = await Hive.openBox(fourthTrixKingdomBox);
    fourthBox.put(fourthTrixKingdomKey, parameter.trixKingdomModel);
  }

  @override
  Future<void> setTrixSecondKingdomData(SetTrixKingdomDataParameter parameter) async {
    final secondBox = await Hive.openBox(secondTrixKingdomBox);
    secondBox.put(secondCCKingdomKey, parameter.trixKingdomModel);
  }

  @override
  Future<void> setTrixThirdKingdomData(SetTrixKingdomDataParameter parameter) async {
    final thirdBox = await Hive.openBox(thirdTrixKingdomBox);
    thirdBox.put(thirdTrixKingdomKey, parameter.trixKingdomModel);
  }

  @override
  Future<void> setArchiveDataUseCase(SetArchiveDataParameter parameter) async {
    final thirdBox = await Hive.openBox(archiveDataBox);
    thirdBox.put(archiveDataKey, parameter.listHiveArchiveDataModel);
  }

  @override
  Future<HiveArchiveDataModel> getArchiveDataUseCase(NoParameter parameter) async {
    HiveArchiveDataModel kingdomModel = HiveArchiveDataModel(listArchiveData: []);
    final archiveBox = await Hive.openBox(archiveDataBox);
    HiveArchiveDataModel result =
    archiveBox.get(archiveDataKey, defaultValue: kingdomModel);
    return result;
  }


}
