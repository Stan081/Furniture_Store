import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/models/category.dart';

import '../../../constants.dart';

class CategoryMenu extends StatefulWidget {
  const CategoryMenu({Key? key}) : super(key: key);

  @override
  State<CategoryMenu> createState() => _CategoryMenuState();
}

class _CategoryMenuState extends State<CategoryMenu> {
  //late CatModel cat;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.13,
      child: ListView.builder(
        itemCount: CatModel.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => buildCategoryMenu(index),
      ),
    );
  }

  Widget buildCategoryMenu(int index) {
    return GestureDetector(
      onTap: (() {
        setState(() {
          selectedIndex = index;
        });
      }),
      child: Padding(
        padding: const EdgeInsets.only(left: defaultPadding, top: 8),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color:
                    selectedIndex == index ? bgColor : const Color(0xFFF8F8F8),
                borderRadius: const BorderRadius.all(
                  Radius.circular(defaultPadding),
                ),
              ),
              padding: const EdgeInsets.all(20),
              child: SvgPicture.asset(CatModel.categories[index].svgSrc),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              CatModel.categories[index].name,
              //style: const TextStyle(fontFamily: "San-serif"),
            )
          ],
        ),
      ),
    );
  }
}
