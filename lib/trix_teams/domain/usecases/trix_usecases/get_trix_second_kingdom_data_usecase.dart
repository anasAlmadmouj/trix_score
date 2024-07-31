
import 'package:trix_score/core/imports/app_imports.dart';

class GetTrixSecondKingdomDataUseCase extends BaseUseCase<Future<TrixKingdomModel> , NoParameter>{
  final BaseTrixTeamsRepository repository;

  GetTrixSecondKingdomDataUseCase(this.repository);

  @override
  Future<TrixKingdomModel> call(NoParameter parameter) async {
    return await repository.getTrixSecondKingdomData(parameter);
  }
}
