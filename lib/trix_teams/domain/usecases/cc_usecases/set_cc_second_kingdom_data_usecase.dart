
import 'package:trix_score/core/imports/app_imports.dart';

class SetCCSecondKingdomDataUseCase extends BaseUseCase<Future<void>, SetCCKingdomDataParameter> {
  final BaseTrixTeamsRepository repository;

  SetCCSecondKingdomDataUseCase(this.repository);

  @override
  Future<void> call(SetCCKingdomDataParameter parameter) async {
    return await repository.setCCSecondKingdomData(parameter);
  }
}



