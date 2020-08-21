import 'package:flutter/material.dart';

// cards udes to hold the information
class Reusablecard extends StatelessWidget {
  Reusablecard({@required this.colour, this.cardchild, this.onPress});
  final Color colour;
  final Widget cardchild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        child: cardchild,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

//round button used for + or -
class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.OnPressed});

  final IconData icon;
  final Function OnPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      onPressed: OnPressed,
      elevation: 6.0,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
    );
  }
}
