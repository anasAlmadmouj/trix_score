
import 'package:trix_score/core/imports/app_imports.dart';

class CCKingdomEntity extends Equatable {
   int firstRoundFirstTeam;
   int firstRoundSecondTeam;
   int secondRoundFirstTeam;
   int secondRoundSecondTeam;
   int totalFirstTeam;
   int totalSecondTeam;

   CCKingdomEntity({
    required this.firstRoundFirstTeam,
    required this.firstRoundSecondTeam,
    required this.secondRoundFirstTeam,
    required this.secondRoundSecondTeam,
    required this.totalFirstTeam,
    required this.totalSecondTeam,
  });

  @override
  List<Object?> get props => [
        firstRoundFirstTeam,
        firstRoundSecondTeam,
        secondRoundFirstTeam,
        secondRoundSecondTeam,
        totalFirstTeam,
        totalSecondTeam,
      ];
}
