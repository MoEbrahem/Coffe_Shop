// ignore_for_file: must_be_immutable

import 'package:coffee_shop/Single_item_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  ItemWidget({super.key});

  List<String> items = ["Black Coffee", "Cold Coffee", "Espresso", "Latte"];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 150 / 200),

      // crossAxisCount: 2,
      // childAspectRatio: 150 / 200,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: items.length,

      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xff212325),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 8,
                ),
              ]),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SingleItemScreen(
                        item: items[index],
                      ),
                    ),
                  );
                },
                child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/${items[index]}.png",
                      width: 140,
                      height: 90,
                      fit: BoxFit.contain,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 8,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const Text(
                        "Best Coffee",
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "\$30",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffe57734)),
                    child: const Icon(
                      CupertinoIcons.add,
                      color: Colors.white,
                      size: 15,
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
