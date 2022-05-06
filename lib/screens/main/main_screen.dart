import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants.dart';

import 'components/header.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Header(),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(defaultPadding),
            decoration: const BoxDecoration(
                color: Color(0xFFF8F8F8),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    "assets/icons/ri_search-2-line.svg",
                    height: 30,
                    width: 30,
                  ),
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search for furniture",
                      fillColor: Color(0xFFF8F8F8),
                      filled: true,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(defaultPadding * 0.8),
                  decoration: const BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/68-setting-1.svg",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
