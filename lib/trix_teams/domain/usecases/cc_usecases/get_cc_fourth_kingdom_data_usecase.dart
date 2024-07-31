

import 'package:trix_score/core/imports/app_imports.dart';

class GetCCFourthKingdomDataUseCase extends BaseUseCase<Future<CCKingdomModel> , NoParameter>{
  final BaseTrixTeamsRepository repository;

  GetCCFourthKingdomDataUseCase(this.repository);

  @override
  Future<CCKingdomModel> call(NoParameter parameter) async {
    return await repository.getCCFourthKingdomData(parameter);
  }
}
