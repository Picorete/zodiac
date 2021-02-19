import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:zodiac/models/zodiac_sign.dart';
import 'package:zodiac/ui/dumb_widgets/zodiac_badge.dart';
import 'package:zodiac/ui/dumb_widgets/zodiac_summary.dart';
import 'package:zodiac/ui/views/zodiac_list/zodiac_list_view_model.dart';
import '../../../constants.dart';

class ZodiacListView extends StatefulWidget {
  @override
  _ZodiacListViewState createState() => _ZodiacListViewState();
}

class _ZodiacListViewState extends State<ZodiacListView> {
  var style = Style();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    style = Style(screenHeight: screenHeight, screenWidth: screenWidth);

    return ViewModelBuilder<ZodiacListViewModel>.reactive(
      builder: (context, model, child) => SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                    decoration: BoxDecoration(gradient: gradientBg),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: model.navigateToHome,
                            child:
                                Icon(Icons.chevron_left, color: Colors.white)),
                        Text(
                          'Zodiac',
                          style: style.zHeadingStyle,
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: _createZodiacListTile(model),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => ZodiacListViewModel(),
    );
  }
}

List<ZodiacSignTile> _createZodiacListTile(ZodiacListViewModel model) {
  return model.zodiacSigns
      .map((ZodiacSign e) => ZodiacSignTile(data: e))
      .toList();
}

class ZodiacSignTile extends StatelessWidget {
  final ZodiacSign data;

  const ZodiacSignTile({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ZodiacListViewModel>.reactive(
        builder: (context, model, child) => Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () => model.openSingInfo(0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          blurRadius: 2.0,
                          color: Colors.black12,
                          spreadRadius: 2.0)
                    ]),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(bottom: 10),
                          decoration: (model.zodiacSigns[0].status)
                              ? BoxDecoration(
                                  border: Border(
                                      bottom:
                                          BorderSide(color: Colors.black12)))
                              : BoxDecoration(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ZodiacBadge(
                                    icon: data.image,
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    data.name,
                                    style: TextStyle(
                                        color: primary,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              (model.zodiacSigns[0].status)
                                  ? Icon(Icons.keyboard_arrow_up,
                                      color: Colors.black26)
                                  : Icon(Icons.keyboard_arrow_down,
                                      color: Colors.black26),
                            ],
                          ),
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 100),
                          height: (model.zodiacSigns[0].status) ? 150 : 0,
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              ZodiacSummary(
                                  element: data.element,
                                  compatibility: data.compatibility,
                                  dateRange: data.dateRange),
                              Container(
                                width: 150,
                                decoration: BoxDecoration(gradient: gradientBg),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () =>
                                        model.navigateToZodiacSingle(data),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          'TAKE A LOOK',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
        viewModelBuilder: () => ZodiacListViewModel());
  }
}
