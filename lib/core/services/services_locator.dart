import 'package:trix_score/core/imports/app_imports.dart';

final sl = GetIt.instance;
class ServicesLocator {
  void init(){
    //bloc
    // sl.registerFactory(() => TeamsComplexBloc(sl(),));
   // data source
    sl.registerLazySingleton<BaseLocalDataSource>(() => LocalDataSource());
    // repositories
    sl.registerLazySingleton<BaseTrixTeamsRepository>(() => TrixTeamsRepository(sl()));
    // use cases
    sl.registerLazySingleton(() => SetCCFirstKingdomDataUseCase(sl()));
    sl.registerLazySingleton(() => SetCCSecondKingdomDataUseCase(sl()));
    sl.registerLazySingleton(() => SetCCThirdKingdomDataUseCase(sl()));
    sl.registerLazySingleton(() => SetCCFourthKingdomDataUseCase(sl()));
    sl.registerLazySingleton(() => GetCCFirstKingdomDataUseCase(sl()));
    sl.registerLazySingleton(() => GetCCSecondKingdomDataUseCase(sl()));
    sl.registerLazySingleton(() => GetCCThirdKingdomDataUseCase(sl()));
    sl.registerLazySingleton(() => GetCCFourthKingdomDataUseCase(sl()));
    sl.registerLazySingleton(() => SetTrixFirstKingdomDataUseCase(sl()));
    sl.registerLazySingleton(() => SetTrixSecondKingdomDataUseCase(sl()));
    sl.registerLazySingleton(() => SetTrixThirdKingdomDataUseCase(sl()));
    sl.registerLazySingleton(() => SetTrixFourthKingdomDataUseCase(sl()));
    sl.registerLazySingleton(() => GetTrixFirstKingdomDataUseCase(sl()));
    sl.registerLazySingleton(() => GetTrixSecondKingdomDataUseCase(sl()));
    sl.registerLazySingleton(() => GetTrixThirdKingdomDataUseCase(sl()));
    sl.registerLazySingleton(() => GetTrixFourthKingdomDataUseCase(sl()));
    sl.registerLazySingleton(() => SetArchiveDataUseCase(sl()));
    sl.registerLazySingleton(() => GetArchiveDataUseCase(sl()));
  }
}