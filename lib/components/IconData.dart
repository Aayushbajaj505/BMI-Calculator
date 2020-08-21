import 'package:flutter/material.dart';
import 'constants.dart';

class reusable_card_child extends StatelessWidget {
  const reusable_card_child(
      {@required this.iconimage, @required this.icontext});
  final iconimage;
  final icontext;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(iconimage, size: 80),
        SizedBox(
          height: 15,
        ),
        Text(
          icontext,
          style: klabeltextstyle,
        )
      ],
    );
  }
}
