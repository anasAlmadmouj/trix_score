import 'package:trix_score/core/imports/app_imports.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  ServicesLocator().init();
  await Hive.initFlutter();
  Hive.registerAdapter(CCKingdomModelAdapter());
  Hive.registerAdapter(TrixKingdomModelAdapter());
  Hive.registerAdapter(ArchiveDataModelAdapter());
  Hive.registerAdapter(HiveArchiveDataModelAdapter());
  await Hive.openBox(archiveDataBox);

  await CacheHelper.init();
  Widget widget;
  bool? onBoarding = CacheHelper.getData(key: 'onBoarding');
  if (onBoarding != null) {
    widget = const HomeScreen();
  } else {
    widget = const OnBoardingScreen();
  }
  runApp(MyApp(startWidget: widget,));

}

class MyApp extends StatelessWidget {
  final Widget startWidget;
  const MyApp({super.key, required this.startWidget});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => TeamsCubit(),),
      ],
      child:  ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            // builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            theme: themeDataLight(),

            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            locale: const Locale('ar'),


            home: SplashScreen(startWidget: startWidget),
          );
        },
      ),
    );
  }

}

extension EmptySpace on num {
  SizedBox get height => SizedBox(
    height: toDouble(),
  );

  SizedBox get width => SizedBox(
    width: toDouble(),
  );
}

