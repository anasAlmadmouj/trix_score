
import 'package:trix_score/core/imports/app_imports.dart';

class GetTrixThirdKingdomDataUseCase extends BaseUseCase<Future<TrixKingdomModel> , NoParameter>{
  final BaseTrixTeamsRepository repository;

  GetTrixThirdKingdomDataUseCase(this.repository);

  @override
  Future<TrixKingdomModel> call(NoParameter parameter) async {
    return await repository.getTrixThirdKingdomData(parameter);
  }
}
