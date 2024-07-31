
import 'package:trix_score/core/imports/app_imports.dart';

class SetTrixThirdKingdomDataUseCase extends BaseUseCase<Future<void>, SetTrixKingdomDataParameter> {
  final BaseTrixTeamsRepository repository;

  SetTrixThirdKingdomDataUseCase(this.repository);

  @override
  Future<void> call(SetTrixKingdomDataParameter parameter) async {
    return await repository.setTrixThirdKingdomData(parameter);
  }
}



