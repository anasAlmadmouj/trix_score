
import 'package:trix_score/core/imports/app_imports.dart';

class SetTrixFirstKingdomDataUseCase extends BaseUseCase<Future<void>, SetTrixKingdomDataParameter> {
  final BaseTrixTeamsRepository repository;

  SetTrixFirstKingdomDataUseCase(this.repository);

  @override
  Future<void> call(SetTrixKingdomDataParameter parameter) async {
    return await repository.setTrixFirstKingdomData(parameter);
  }
}



