import 'package:trix_score/core/imports/app_imports.dart';

class SetArchiveDataParameter extends Equatable{
  final HiveArchiveDataModel listHiveArchiveDataModel;

  const SetArchiveDataParameter({required this.listHiveArchiveDataModel});

  @override
  List<Object?> get props => [listHiveArchiveDataModel ,];
}