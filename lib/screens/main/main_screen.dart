import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants.dart';

import 'components/categories.dart';
import 'components/header.dart';
import 'components/items_list.dart';
import 'components/search_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Header(),
        ),
      ),
      body: Column(
        children: const [SearchBar(), CategoryMenu(), ItemsList()],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(
              left: defaultPadding + 15,
              right: defaultPadding + 15,
              top: defaultPadding,
              bottom: defaultPadding + 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset("assets/icons/clarity_home-solid.svg"),
              ),
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset("assets/icons/3-keep-minus.svg"),
              ),
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset("assets/icons/76-notification.svg"),
              ),
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset("assets/icons/bi_person.svg"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
