import 'package:trix_score/core/imports/app_imports.dart';

class CCResultColumn extends StatelessWidget {
  final String firstRoundResult;
  final String secondRoundResult;
  final String totalRound;
  final String teamName;
  final Color color;

  const CCResultColumn({
    required this.firstRoundResult,
    required this.secondRoundResult,
    required this.totalRound,
    required this.teamName,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            teamName,
            style:
                Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 24),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          20.height,
          Text(
            firstRoundResult,
            style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
          5.height,
          const Text(
            '+',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
          const SizedBox(height: 5),
          Text(
            secondRoundResult,
            style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
          Container(
            height: 2,
            width: 70,
            color: Colors.grey,
            margin: const EdgeInsets.symmetric(vertical: 5),
          ),
          Text(
            totalRound,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: color),
          ),
        ],
      ),
    );
  }
}
