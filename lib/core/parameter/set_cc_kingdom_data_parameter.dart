import 'package:trix_score/core/imports/app_imports.dart';

class SetCCKingdomDataParameter extends Equatable{
  final CCKingdomModel kingdomModel;

  const SetCCKingdomDataParameter({required this.kingdomModel});

  @override
  List<Object?> get props => [kingdomModel];
}