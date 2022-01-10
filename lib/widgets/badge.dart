import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  const Badge({
    Key? key,
    required this.child,
   required this.color, required this.radius, required this.innerChild,
  }) : super(key: key);

  final Widget child;
  final Widget innerChild;
  final Color color;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          child,
          Positioned(
            right: 8,
            bottom: 8,
            child: Container(
              padding: const EdgeInsets.all(2.0),
              // color: Theme.of(context).accentColor,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius),
                color: color,
              ),
              constraints: BoxConstraints(
                minWidth: radius/2,
                minHeight: radius/2,
              ),
              child: innerChild,
              ),
            ),
        ],
      ),
    );
  }
}
