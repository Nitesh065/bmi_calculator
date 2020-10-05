import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.Cardchild,this.onPressed});
  final Color colour;
  final Widget Cardchild;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onPressed,
      child: Container(
        child: Cardchild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}