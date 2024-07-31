
import 'package:trix_score/core/imports/app_imports.dart';

class SetCCThirdKingdomDataUseCase extends BaseUseCase<Future<void>, SetCCKingdomDataParameter> {
  final BaseTrixTeamsRepository repository;

  SetCCThirdKingdomDataUseCase(this.repository);

  @override
  Future<void> call(SetCCKingdomDataParameter parameter) async {
    return await repository.setCCThirdKingdomData(parameter);
  }
}



