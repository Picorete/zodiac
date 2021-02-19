import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zodiac/ui/dumb_widgets/zodiac_card.dart';
import 'package:zodiac/ui/views/home/home_view_model.dart';
import '../../../constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var style = Style();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    style = Style(screenHeight: screenHeight, screenWidth: screenWidth);

    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _createHomeHeader(screenHeight, screenWidth),
                SizedBox(
                  height: 20,
                ),
                _createZodiacSummary(screenWidth),
                SizedBox(
                  height: 20,
                ),
                ZodiacCard(
                  icon: 'assets/calendar.svg',
                  title: 'DAILY HOROSCOPE',
                  content:
                      'Your nesting instincts  could   go    into   overdrive   this Saturday as the quarter  moon  in Cancer winds up your domestic   fourth   house.    Tempted     to   splurge   on furniture, art prints and a new lighting scheme?  Before you raid Pottery Barn, research shelter blogs and start a Pinterest board. Quarter moons call for gentle  changes and you don’t want to overdo it! Try to... ',
                ),
                SizedBox(
                  height: 20,
                ),
                ZodiacCard(
                  icon: 'assets/heart.svg',
                  title: 'LOVE TIPS',
                  content:
                      'Your nesting instincts  could   go    into   overdrive   this Saturday as the quarter  moon  in Cancer winds up your domestic   fourth   house.    Tempted     to   splurge   on furniture, art prints and a new lighting scheme?  Before you raid Pottery Barn, research shelter blogs and start a Pinterest board. Quarter moons call for gentle  changes and you don’t want to overdo it! Try to... ',
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }

  Container _createZodiacSummary(screenWidth) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      blurRadius: 10,
                      spreadRadius: 5,
                    )
                  ]),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        child: SvgPicture.asset(
                          'assets/virgo.svg',
                          width: (screenWidth > 350) ? 20 : 30,
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, gradient: gradientBg),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('VIRGO',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: primary,
                                  fontWeight: FontWeight.bold)),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color.fromRGBO(129, 129, 129, 1),
                                size: 20,
                              ),
                              Text(
                                'Recife, PE',
                                style: TextStyle(
                                    color: Color.fromRGBO(129, 129, 129, 1),
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Text(
                          '02/07/1995',
                          style: style.zWhiteText,
                        ),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            gradient: gradientBg,
                            borderRadius: BorderRadius.circular(2)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text('ELEMENT -',
                              style: TextStyle(
                                  color: primary, fontWeight: FontWeight.bold)),
                          Text(' Water',
                              style: TextStyle(
                                  color: Color.fromRGBO(141, 141, 141, 1))),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text('COMPATIBILITY -',
                              style: TextStyle(
                                  color: primary, fontWeight: FontWeight.bold)),
                          Text(' Capricorn and Taurus',
                              style: TextStyle(
                                  color: Color.fromRGBO(141, 141, 141, 1))),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text('DATE RANGE -',
                              style: TextStyle(
                                  color: primary, fontWeight: FontWeight.bold)),
                          Text(' June 21 to July 22',
                              style: TextStyle(
                                  color: Color.fromRGBO(141, 141, 141, 1))),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }

  Widget _createHomeHeader(double screenHeight, double screenWidth) {
    return ViewModelBuilder.reactive(
        builder: (context, model, child) => Container(
              height: screenHeight * 0.25,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Zodiac',
                          style: style.zWhiteTextBold,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Good Morning! Ericka Pricila',
                          style: style.zWhiteTextBold,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    width: double.infinity,
                    height: screenHeight * 0.19,
                    decoration: BoxDecoration(gradient: gradientBg),
                  ),
                  Positioned(
                    bottom: (screenWidth > 350) ? 15 : 5,
                    child: Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(168, 168, 168, 0.3),
                            blurRadius: 5,
                            spreadRadius: 1)
                      ], borderRadius: BorderRadius.circular(18.0)),
                      child: FlatButton(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        color: Colors.white,
                        onPressed: model.navigateToZodiacList,
                        child: Row(
                          children: [
                            Icon(
                              Icons.add,
                              color: primary,
                            ),
                            Text(
                              'ZODIAC',
                              style: style.primaryText,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        viewModelBuilder: () => HomeViewModel());
  }
}
