import 'package:flutter/material.dart';

import '../../constants.dart';

class ZodiacSummary extends StatelessWidget {
  final String element;
  final String compatibility;
  final String dateRange;

  const ZodiacSummary(
      {Key key, this.element, this.compatibility, this.dateRange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'ELEMENT -',
              style: TextStyle(color: primary, fontWeight: FontWeight.bold),
            ),
            Text(element, style: TextStyle(color: Colors.black54))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'COMPATIBILITY -',
              style: TextStyle(color: primary, fontWeight: FontWeight.bold),
            ),
            Text(compatibility, style: TextStyle(color: Colors.black54))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'DATE RANGE -',
              style: TextStyle(color: primary, fontWeight: FontWeight.bold),
            ),
            Text(dateRange, style: TextStyle(color: Colors.black54))
          ],
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
