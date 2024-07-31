
import 'package:trix_score/core/imports/app_imports.dart';

class SetTrixFourthKingdomDataUseCase extends BaseUseCase<Future<void>, SetTrixKingdomDataParameter> {
  final BaseTrixTeamsRepository repository;

  SetTrixFourthKingdomDataUseCase(this.repository);

  @override
  Future<void> call(SetTrixKingdomDataParameter parameter) async {
    return await repository.setTrixFourthKingdomData(parameter);
  }
}



