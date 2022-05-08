import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
