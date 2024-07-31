

import 'package:trix_score/core/imports/app_imports.dart';

class SetArchiveDataUseCase extends BaseUseCase<Future<void>, SetArchiveDataParameter> {
  final BaseTrixTeamsRepository repository;

  SetArchiveDataUseCase(this.repository);

  @override
  Future<void> call(SetArchiveDataParameter parameter) async {
    return await repository.setArchiveDataUseCase(parameter);
  }
}