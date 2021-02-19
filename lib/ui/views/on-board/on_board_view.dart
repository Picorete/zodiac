import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:zodiac/ui/views/on-board/on_board_view_model.dart';
import '../../../constants.dart';

class OnBoardView extends StatelessWidget {
  final _pageViewController = PageController();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnBoardViewModel>.reactive(
      builder: (context, model, child) => SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: _pageViewController,
                  children: [
                    _onBoardContainer(
                      context,
                      'assets/crab_on_board.svg',
                      'NEWS EVERY DAY',
                      'tell your sign to us and receive daily motivational texts and tips about it',
                    ),
                    _onBoardContainer(
                      context,
                      'assets/fishes_on_board.svg',
                      'KNOW THE ZODIAC',
                      'read about other signs and know the main characteristics of each one!',
                    ),
                  ],
                ),
              ),
              _onBoardFooter(context)
            ],
          ),
        ),
      ),
      viewModelBuilder: () => OnBoardViewModel(),
    );
  }

  Widget _onBoardContainer(
      context, String assetImage, String headingText, String subtitleText) {
    final styles = new Style(
        screenHeight: MediaQuery.of(context).size.height,
        screenWidth: MediaQuery.of(context).size.width);
    return Container(
      padding: EdgeInsets.all(30),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              assetImage,
              width: 50,
              height: 50,
            ),
            SizedBox(height: 40),
            Text(
              headingText,
              style: styles.zHeadingStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              subtitleText,
              style: styles.zSubHeadingStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(168, 168, 168, 0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ],
          gradient: gradientBg,
        ),
      ),
    );
  }

  Widget _onBoardFooter(context) {
    final double screen = MediaQuery.of(context).size.height;

    return ViewModelBuilder<OnBoardViewModel>.reactive(
      builder: (context, model, child) => Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        height: screen * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => {},
              child: GestureDetector(
                onTap: model.navigateToLogin,
                child: Text(
                  'SKIP',
                  style: TextStyle(color: primary),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _pageViewController.nextPage(
                  duration: Duration(milliseconds: 500), curve: Curves.ease),
              child: Icon(
                Icons.arrow_forward_ios,
                color: primary,
              ),
            )
          ],
        ),
      ),
      viewModelBuilder: () => OnBoardViewModel(),
    );
  }
}
