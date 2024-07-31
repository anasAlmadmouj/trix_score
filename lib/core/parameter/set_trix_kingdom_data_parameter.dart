import 'package:trix_score/core/imports/app_imports.dart';

class SetTrixKingdomDataParameter extends Equatable{
  final TrixKingdomModel trixKingdomModel;

  const SetTrixKingdomDataParameter({required this.trixKingdomModel});

  @override
  List<Object?> get props => [trixKingdomModel];
}