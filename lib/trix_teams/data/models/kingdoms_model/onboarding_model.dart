
import 'package:trix_score/core/imports/app_imports.dart';

class OnBoardingModel{
  final String image;
  final String title;
  final String deteals;
  OnBoardingModel(this.image , this.title , this.deteals);
}

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(ImageAssets.logo, 'اهلا بك في حاسبة التركس', 'احسب نتائج العابك بسهولة وسرعة , احفظ نتائجك السابقة واستمتع بالعابك بدون التفكير بحسابها'),
  OnBoardingModel(ImageAssets.firstOnBoarding, 'اختر نوع اللعبة', 'اختر لعبتك المفضلة واحسب نتيجتها بكل سهولة'),
  OnBoardingModel(ImageAssets.secondOnBoarding, 'احسب بسهولة', 'حدد مجموع احد الفريقين واستمتع بسهولة الحساب'),
  OnBoardingModel(ImageAssets.thirdOnBoarding, 'أرشيف النتائج', 'شاهد جميع نتائج العابك السابقة بسهولة في الأرشيف'),
];