

import 'package:trix_score/core/imports/app_imports.dart';

class GetArchiveDataUseCase extends BaseUseCase<Future<HiveArchiveDataModel> , NoParameter>{
  final BaseTrixTeamsRepository repository;

  GetArchiveDataUseCase(this.repository);

  @override
  Future<HiveArchiveDataModel> call(NoParameter parameter) async {
    return await repository.getArchiveDataUseCase(parameter);
  }
}
