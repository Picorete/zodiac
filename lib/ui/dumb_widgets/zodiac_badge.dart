import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class ZodiacBadge extends StatelessWidget {
  final String icon;
  final double height;
  final double width;

  ZodiacBadge({
    this.icon,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (height != null) ? height : 50,
      width: (width != null) ? width : 50,
      padding: EdgeInsets.all(10),
      child: SvgPicture.asset(icon),
      decoration: BoxDecoration(
          gradient: gradientBg,
          shape: BoxShape.circle,
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 2)]),
    );
  }
}
