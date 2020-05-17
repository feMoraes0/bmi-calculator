import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget childCard;
  final Function onTap;

  ReusableCard({@required this.colour, this.childCard, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: this.colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: childCard,
      ),
    );
  }
}
