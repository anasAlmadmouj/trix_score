
import '../../imports/app_imports.dart';

ThemeData themeDataLight() => ThemeData(
  // scaffoldBackgroundColor: MyColors.scaffoldColor,
  useMaterial3: true,
  colorSchemeSeed: MyColors.primaryColor,
  fontFamily: 'ElMessiri',
  textTheme: textTheme ,
);
TextTheme? textTheme = const TextTheme(
  bodySmall: TextStyle(
    color: MyColors.black,
    fontSize: 12,
  ),
  bodyMedium: TextStyle(
    color: MyColors.black,
    fontSize: 18,
  ),
  bodyLarge: TextStyle(
    color: MyColors.black,
    fontSize: 24,
    fontWeight: FontWeight.bold
  ),
);