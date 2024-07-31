
import 'package:trix_score/core/imports/app_imports.dart';

class GetTrixFirstKingdomDataUseCase extends BaseUseCase<Future<TrixKingdomModel> , NoParameter>{
  final BaseTrixTeamsRepository repository;

  GetTrixFirstKingdomDataUseCase(this.repository);

  @override
  Future<TrixKingdomModel> call(NoParameter parameter) async {
    return await repository.getTrixFirstKingdomData(parameter);
  }
}
