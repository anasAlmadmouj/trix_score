

import 'package:trix_score/core/imports/app_imports.dart';

class GetCCFirstKingdomDataUseCase extends BaseUseCase<Future<CCKingdomModel> , NoParameter>{
  final BaseTrixTeamsRepository repository;

  GetCCFirstKingdomDataUseCase(this.repository);

  @override
  Future<CCKingdomModel> call(NoParameter parameter) async {
    return await repository.getCCFirstKingdomData(parameter);
  }
}
