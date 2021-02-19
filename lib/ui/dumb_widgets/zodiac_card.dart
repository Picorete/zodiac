import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class ZodiacCard extends StatelessWidget {
  final String icon;
  final String title;
  final String content;

  const ZodiacCard({Key key, this.icon, this.title, this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Container(
              child: Column(
                children: [
                  Container(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromRGBO(201, 201, 201, 1)))),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  icon,
                                  width: 15,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  title,
                                  style: TextStyle(
                                      color: primary,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Text(content,
                        style: TextStyle(
                          color: Color.fromRGBO(100, 100, 100, 1),
                        )),
                  )
                ],
              ),
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      blurRadius: 10,
                      spreadRadius: 5,
                    )
                  ])),
          Positioned(
            top: 15,
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                  border: Border(left: BorderSide(color: primary, width: 3))),
            ),
          )
        ],
      ),
    );
  }
}
