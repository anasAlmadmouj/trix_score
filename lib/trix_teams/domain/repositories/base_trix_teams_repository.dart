

import 'package:trix_score/core/imports/app_imports.dart';

abstract class BaseTrixTeamsRepository {
  Future<void> setCCFirstKingdomData(SetCCKingdomDataParameter parameter);
  Future<void> setCCSecondKingdomData(SetCCKingdomDataParameter parameter);
  Future<void> setCCThirdKingdomData(SetCCKingdomDataParameter parameter);
  Future<void> setCCFourthKingdomData(SetCCKingdomDataParameter parameter);
  Future<CCKingdomModel> getCCFirstKingdomData(NoParameter parameter);
  Future<CCKingdomModel> getCCSecondKingdomData(NoParameter parameter);
  Future<CCKingdomModel> getCCThirdKingdomData(NoParameter parameter);
  Future<CCKingdomModel> getCCFourthKingdomData(NoParameter parameter);
  Future<void> setTrixFirstKingdomData(SetTrixKingdomDataParameter parameter);
  Future<void> setTrixSecondKingdomData(SetTrixKingdomDataParameter parameter);
  Future<void> setTrixThirdKingdomData(SetTrixKingdomDataParameter parameter);
  Future<void> setTrixFourthKingdomData(SetTrixKingdomDataParameter parameter);
  Future<TrixKingdomModel> getTrixFirstKingdomData(NoParameter parameter);
  Future<TrixKingdomModel> getTrixSecondKingdomData(NoParameter parameter);
  Future<TrixKingdomModel> getTrixThirdKingdomData(NoParameter parameter);
  Future<TrixKingdomModel> getTrixFourthKingdomData(NoParameter parameter);
  Future<void> setArchiveDataUseCase(SetArchiveDataParameter parameter);
  Future<HiveArchiveDataModel> getArchiveDataUseCase(NoParameter parameter);
}
