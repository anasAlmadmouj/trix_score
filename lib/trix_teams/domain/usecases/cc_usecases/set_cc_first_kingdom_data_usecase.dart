import 'package:trix_score/core/imports/app_imports.dart';

class SetCCFirstKingdomDataUseCase extends BaseUseCase<Future<void>, SetCCKingdomDataParameter> {
  final BaseTrixTeamsRepository repository;

  SetCCFirstKingdomDataUseCase(this.repository);

  @override
  Future<void> call(SetCCKingdomDataParameter parameter) async {
    return await repository.setCCFirstKingdomData(parameter);
  }
}



