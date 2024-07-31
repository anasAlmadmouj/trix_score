

import 'package:trix_score/core/imports/app_imports.dart';

class GetCCSecondKingdomDataUseCase extends BaseUseCase<Future<CCKingdomModel> , NoParameter>{
  final BaseTrixTeamsRepository repository;

  GetCCSecondKingdomDataUseCase(this.repository);

  @override
  Future<CCKingdomModel> call(NoParameter parameter) async {
    return await repository.getCCSecondKingdomData(parameter);
  }
}
