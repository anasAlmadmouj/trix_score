
import 'package:trix_score/core/imports/app_imports.dart';

class GetTrixFourthKingdomDataUseCase extends BaseUseCase<Future<TrixKingdomModel> , NoParameter>{
  final BaseTrixTeamsRepository repository;

  GetTrixFourthKingdomDataUseCase(this.repository);

  @override
  Future<TrixKingdomModel> call(NoParameter parameter) async {
    return await repository.getTrixFourthKingdomData(parameter);
  }
}
