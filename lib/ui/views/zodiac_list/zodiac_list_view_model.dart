import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:zodiac/app/locator.dart';
import 'package:zodiac/app/router.gr.dart';
import 'package:zodiac/models/zodiac_sign.dart';

class ZodiacListViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  final List<ZodiacSign> zodiacSigns = [
    ZodiacSign(
      name: 'ARIES',
      status: false,
      image: 'assets/aries.svg',
      compatibility: ' Aries',
      dateRange: ' March 21 to April 19',
      element: ' Fire',
    ),
    ZodiacSign(
      name: 'TAURUS',
      status: false,
      image: 'assets/taurus.svg',
      compatibility: ' Scorpio and Cancer',
      dateRange: ' April 20 to May 20',
      element: ' Earth',
    ),
    ZodiacSign(
      name: 'GEMINI',
      status: false,
      image: 'assets/gemini.svg',
      compatibility: ' Libra and Aquarius',
      dateRange: ' May 21 to June 21',
      element: ' Air',
    ),
    ZodiacSign(
      name: 'LEO',
      status: false,
      image: 'assets/leo.svg',
      compatibility: ' Aries and Sagittarius',
      dateRange: ' July 23 to August 23',
      element: ' Fire',
    ),
    ZodiacSign(
      name: 'VIRGO',
      status: false,
      image: 'assets/virgo.svg',
      compatibility: ' Libra and Sagittarius',
      dateRange: ' August 23 to 22 September',
      element: ' Earth',
    ),
    ZodiacSign(
      name: 'LIBRA',
      status: false,
      image: 'assets/libra.svg',
      compatibility: ' Sagittarius and Aquarius',
      dateRange: ' 23 September to October 22',
      element: ' Air',
    ),
  ];

  openSingInfo(index) {
    if (zodiacSigns[index].status) {
      zodiacSigns[index].status = false;
    } else {
      zodiacSigns[index].status = true;
    }

    notifyListeners();
  }

  Future navigateToHome() async {
    await _navigationService.navigateTo(Routes.homeView);
  }

  Future navigateToZodiacSingle(ZodiacSign sign) async {
    await _navigationService
        .navigateTo(Routes.zodiacSingleView, arguments: [sign]);
  }
}
