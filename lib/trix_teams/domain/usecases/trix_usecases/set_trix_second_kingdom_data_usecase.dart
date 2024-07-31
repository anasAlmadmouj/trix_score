
import 'package:trix_score/core/imports/app_imports.dart';

class SetTrixSecondKingdomDataUseCase extends BaseUseCase<Future<void>, SetTrixKingdomDataParameter> {
  final BaseTrixTeamsRepository repository;

  SetTrixSecondKingdomDataUseCase(this.repository);

  @override
  Future<void> call(SetTrixKingdomDataParameter parameter) async {
    return await repository.setTrixSecondKingdomData(parameter);
  }
}



