import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeDrawerListTile extends StatelessWidget {
  final String imagePath;
  final String text;
  final Function selectedHandler;
  const HomeDrawerListTile({
    Key? key,
    required this.text,
    required this.selectedHandler,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(imagePath, width: 20.0),
      title: Text(text,
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25)),
      onTap: () {
        selectedHandler();
      },
    );
  }
}
