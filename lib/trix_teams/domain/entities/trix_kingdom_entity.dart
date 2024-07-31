
import 'package:trix_score/core/imports/app_imports.dart';

class TrixKingdomEntity extends Equatable {
   int complexFirstTeam;
   int complexSecondTeam;
   int trixFirstTeam;
   int trixSecondTeam;
   int totalFirstTeam;
   int totalSecondTeam;

   TrixKingdomEntity({
    required this.complexFirstTeam,
    required this.complexSecondTeam,
    required this.trixFirstTeam,
    required this.trixSecondTeam,
    required this.totalFirstTeam,
    required this.totalSecondTeam,
  });

  @override
  List<Object?> get props => [
        complexFirstTeam,
        complexSecondTeam,
        trixFirstTeam,
        trixSecondTeam,
        totalFirstTeam,
        totalSecondTeam,
      ];
}
