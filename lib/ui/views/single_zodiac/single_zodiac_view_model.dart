import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:zodiac/app/locator.dart';
import 'package:zodiac/app/router.gr.dart';

class ZodiacSingleViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  Future navigateToZodiacList() async {
    await _navigationService.navigateTo(Routes.zodiacListView);
  }
}
