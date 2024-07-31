import 'package:trix_score/core/imports/app_imports.dart';

class SetCCFourthKingdomDataUseCase extends BaseUseCase<Future<void>, SetCCKingdomDataParameter> {
  final BaseTrixTeamsRepository repository;

  SetCCFourthKingdomDataUseCase(this.repository);

  @override
  Future<void> call(SetCCKingdomDataParameter parameter) async {
    return await repository.setCCFourthKingdomData(parameter);
  }
}



