import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

const List<Condition> blockWidthConstraints = [
  Condition.equals(name: MOBILE, value: BoxConstraints(maxWidth: 600)),
  Condition.equals(name: TABLET, value: BoxConstraints(maxWidth: 700)),
  Condition.equals(name: DESKTOP, value: BoxConstraints(maxWidth: 1280)),
];

EdgeInsets blockPadding(BuildContext context) => ResponsiveValue(context,
        defaultValue: EdgeInsets.symmetric(horizontal: 55, vertical: 80),
        valueWhen: [
          Condition.smallerThan(
              name: TABLET,
              value: EdgeInsets.symmetric(horizontal: 15, vertical: 45))
        ]).value;