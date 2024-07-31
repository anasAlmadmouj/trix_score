

import 'package:trix_score/core/imports/app_imports.dart';

class TrixTeamsRepository extends BaseTrixTeamsRepository {
  final BaseLocalDataSource baseLocalDataSource;
  TrixTeamsRepository(this.baseLocalDataSource);

  @override
  Future<void> setCCFirstKingdomData(SetCCKingdomDataParameter parameter) async {
    return await baseLocalDataSource.setCCFirstKingdomData(parameter);
  }

  @override
  Future<void> setCCSecondKingdomData(SetCCKingdomDataParameter parameter) async {
    return await baseLocalDataSource.setCCSecondKingdomData(parameter);
  }

  @override
  Future<void> setCCThirdKingdomData(SetCCKingdomDataParameter parameter) async {
    return await baseLocalDataSource.setCCThirdKingdomData(parameter);
  }

  @override
  Future<void> setCCFourthKingdomData(SetCCKingdomDataParameter parameter) async {
    return await baseLocalDataSource.setCCFourthKingdomData(parameter);
  }

  @override
  Future<CCKingdomModel> getCCFirstKingdomData(NoParameter parameter) async {
    return await baseLocalDataSource.getCCFirstKingdomData(parameter);
  }



  @override
  Future<CCKingdomModel> getCCSecondKingdomData(NoParameter parameter) async{
    return await baseLocalDataSource.getCCSecondKingdomData(parameter);
  }

  @override
  Future<CCKingdomModel> getCCThirdKingdomData(NoParameter parameter) async{
    return await baseLocalDataSource.getCCThirdKingdomData(parameter);

  }
  @override
  Future<CCKingdomModel> getCCFourthKingdomData(NoParameter parameter) async{
    return await baseLocalDataSource.getCCFourthKingdomData(parameter);

  }

  @override
  Future<TrixKingdomModel> getTrixThirdKingdomData(NoParameter parameter) async {
    return await baseLocalDataSource.getTrixThirdKingdomData(parameter);
  }

  @override
  Future<TrixKingdomModel> getTrixFirstKingdomData(NoParameter parameter) async {
    return await baseLocalDataSource.getTrixFirstKingdomData(parameter);
  }

  @override
  Future<TrixKingdomModel> getTrixFourthKingdomData(NoParameter parameter) async {
    return await baseLocalDataSource.getTrixFourthKingdomData(parameter);
  }

  @override
  Future<TrixKingdomModel> getTrixSecondKingdomData(NoParameter parameter) async {
    return await baseLocalDataSource.getTrixSecondKingdomData(parameter);
  }

  @override
  Future<void> setTrixFirstKingdomData(SetTrixKingdomDataParameter parameter) async {
    return await baseLocalDataSource.setTrixFirstKingdomData(parameter);
  }

  @override
  Future<void> setTrixFourthKingdomData(SetTrixKingdomDataParameter parameter) async {
    return await baseLocalDataSource.setTrixFourthKingdomData(parameter);
  }

  @override
  Future<void> setTrixSecondKingdomData(SetTrixKingdomDataParameter parameter) async {
    return await baseLocalDataSource.setTrixSecondKingdomData(parameter);
  }

  @override
  Future<void> setTrixThirdKingdomData(SetTrixKingdomDataParameter parameter) async {
    return await baseLocalDataSource.setTrixThirdKingdomData(parameter);
  }

  @override
  Future<HiveArchiveDataModel> getArchiveDataUseCase(NoParameter parameter) async {
    return await baseLocalDataSource.getArchiveDataUseCase(parameter);
  }

  @override
  Future<void> setArchiveDataUseCase(SetArchiveDataParameter parameter) async {
    return await baseLocalDataSource.setArchiveDataUseCase(parameter);
  }
}
