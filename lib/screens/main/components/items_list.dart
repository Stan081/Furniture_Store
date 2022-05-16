import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/items.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
            left: defaultPadding, right: defaultPadding, top: 15),
        child: GridView.builder(
            itemCount: ItemModel.items.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: defaultPadding,
                crossAxisSpacing: defaultPadding,
                childAspectRatio: 0.75),
            itemBuilder: (context, index) => Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(defaultPadding * 0.5),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFF8F8F8),
                        blurRadius: 4,
                        offset: Offset(4, 8), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Image.asset(
                          ItemModel.items[index].imgSrc,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(ItemModel.items[index].name),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$${ItemModel.items[index].price}",
                                  style: const TextStyle(
                                      fontSize: 11.73 * 1.5,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF4E5A37)),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFF8F8F8),
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: const Icon(
                                      Icons.arrow_forward,
                                      color: secondaryColor,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
      ),
    );
  }
}
