import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/category.dart';
import 'package:furniture_app/models/items.dart';

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
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Header(),
        ),
      ),
      body: Column(
        children: [
          SearchBar(),
          CategoryMenu(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: GridView.builder(
                  itemCount: ItemModel.items.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: defaultPadding,
                      crossAxisSpacing: defaultPadding,
                      childAspectRatio: 0.75),
                  itemBuilder: (context, index) => Container(
                        decoration: const BoxDecoration(
                          //color: bgColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(defaultPadding * 0.5),
                          ),
                        ),
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Image.asset(
                                ItemModel.items[index].imgSrc,
                                fit: BoxFit.fill,
                                alignment: Alignment.topLeft,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 15.0,
                                  ),
                                  child: Text(ItemModel.items[index].name),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$${ItemModel.items[index].price}"),
                                    TextButton(
                                      style: const ButtonStyle(),
                                      onPressed: () {},
                                      child: const Icon(
                                        Icons.arrow_forward,
                                        color: secondaryColor,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      )),
            ),
          )
        ],
      ),
    );
  }
}
