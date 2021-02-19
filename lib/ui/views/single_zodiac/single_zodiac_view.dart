import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:zodiac/models/zodiac_sign.dart';
import 'package:zodiac/ui/dumb_widgets/zodiac_badge.dart';
import 'package:zodiac/ui/dumb_widgets/zodiac_card.dart';
import 'package:zodiac/ui/dumb_widgets/zodiac_summary.dart';
import 'package:zodiac/ui/views/single_zodiac/single_zodiac_view_model.dart';

import '../../../constants.dart';

class ZodiacSingleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final style = Style(screenHeight: screenHeight, screenWidth: screenWidth);
    final List args = ModalRoute.of(context).settings.arguments;
    final ZodiacSign sign = args[0];

    return ViewModelBuilder<ZodiacSingleViewModel>.reactive(
        builder: (context, model, child) => SafeArea(
                child: Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: screenHeight * 0.51,
                      child: Stack(
                        children: [
                          Container(
                            height: screenHeight * 0.35,
                            child: Stack(
                              children: [
                                Image(
                                    width: double.infinity,
                                    image: AssetImage('assets/vaquita.png'),
                                    fit: BoxFit.fill),
                                Container(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          colors: [
                                        Color.fromRGBO(255, 148, 130, 0.2),
                                        Color.fromRGBO(125, 119, 255, 0.2)
                                      ])),
                                  height: screenHeight * 0.4,
                                ),
                                Positioned.fill(
                                    child: Padding(
                                  padding: EdgeInsets.only(bottom: 40),
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      sign.name,
                                      style: style.zWhiteTextBold,
                                    ),
                                  ),
                                )),
                                Positioned(
                                    top: 10,
                                    left: 10,
                                    child: GestureDetector(
                                      onTap: model.navigateToZodiacList,
                                      child: Icon(Icons.chevron_left,
                                          color: Colors.white),
                                    ))
                              ],
                            ),
                          ),
                          Positioned.fill(
                            bottom: 0,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(5),
                                        bottomLeft: Radius.circular(5)),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 2,
                                          offset: Offset(0, 2))
                                    ]),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 30),
                                height: screenHeight * 0.16,
                                width: screenWidth * 0.9,
                                child: Container(
                                  child: Column(
                                    children: [
                                      ZodiacSummary(
                                          element: sign.element,
                                          compatibility: sign.compatibility,
                                          dateRange: sign.dateRange)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            child: ZodiacBadge(
                              icon: sign.image,
                              height: 60,
                              width: 60,
                            ),
                            bottom: 80,
                            right: 50,
                          )
                        ],
                      ),
                    ),
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
            )),
        viewModelBuilder: () => ZodiacSingleViewModel());
  }
}
