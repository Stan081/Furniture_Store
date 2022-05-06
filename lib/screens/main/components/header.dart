import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "FurnitureCo.",
          style: TextStyle(
              color: Color(0xFF303030),
              fontSize: 25,
              fontWeight: FontWeight.w600),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/25-trolly.svg",
            //color: Color(0xFF303030),
          ),
        )
      ],
    );
  }
}
