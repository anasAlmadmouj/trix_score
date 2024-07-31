import 'package:trix_score/core/imports/app_imports.dart';

class GetCCThirdKingdomDataUseCase extends BaseUseCase<Future<CCKingdomModel> , NoParameter>{
  final BaseTrixTeamsRepository repository;

  GetCCThirdKingdomDataUseCase(this.repository);

  @override
  Future<CCKingdomModel> call(NoParameter parameter) async {
    return await repository.getCCThirdKingdomData(parameter);
  }
}
