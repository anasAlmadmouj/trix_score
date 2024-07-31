
import '../imports/app_imports.dart';

abstract class BaseUseCase<T , Parameter> {
  T call(Parameter parameter);
}

class NoParameter extends Equatable{
const NoParameter();
  @override
  List<Object?> get props => [];
}