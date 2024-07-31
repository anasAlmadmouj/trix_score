import 'package:trix_score/core/imports/app_imports.dart';

class TeamsState extends Equatable {
  final RequestState requestState;

  const TeamsState(
      {this.requestState = RequestState.loading,});

  TeamsState copyWith({
    RequestState? requestState,
  }) {
    return TeamsState(
      requestState: requestState ?? this.requestState,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [requestState];
}
