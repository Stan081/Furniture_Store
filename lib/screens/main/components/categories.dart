import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/models/category.dart';

import '../../../constants.dart';

class Categories extends StatefulWidget {
  final Category cat;
  const Categories({Key? key, required this.cat}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  late final Category cat;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFFF8F8F8),
              borderRadius: BorderRadius.all(
                Radius.circular(defaultPadding),
              ),
            ),
            height: 60,
            width: 60,
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset(""),
          ),
          const SizedBox(
            height: 7,
          ),
          const Text(
              //CatModel.categories[index].name,
              ""
              //style: const TextStyle(fontFamily: "San-serif"),
              )
        ],
      ),
    );
  }
}
