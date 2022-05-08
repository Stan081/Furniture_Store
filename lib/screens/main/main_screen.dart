import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/models/category.dart';

import '../../constants.dart';
import '../../models/category.dart';
import 'components/categories.dart';
import 'components/header.dart';
import 'components/search_bar.dart';

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
          SearchBar(),
          CategoryMenu()
          // Expanded(
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: CatModel.categories.length,
          //     itemBuilder: (context, index) => Categories(cat : CatModel.categories[index]),
          //   ),
          // ),
        ],
      ),
    );
  }
}

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
    return Expanded(
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
                  color: selectedIndex == index ? bgColor : Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.all(
                    Radius.circular(defaultPadding),
                  ),
                ),
                height: 60,
                width: 60,
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(CatModel.categories[index].svgSrc)),
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
