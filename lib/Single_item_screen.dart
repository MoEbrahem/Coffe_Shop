import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleItemScreen extends StatelessWidget {
  final String item;
  const SingleItemScreen({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(top: 10),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 30,
                    color: Colors.white.withOpacity(0.4),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10,left: 10,top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/$item.png",
                          width: MediaQuery.of(context).size.width / 1.2,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "BEST COFFEE",
                        style: TextStyle(
                            letterSpacing: 3,
                            color: Colors.white.withOpacity(0.4)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        item,
                        style:
                            const TextStyle(fontSize: 28, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.4),
                                ),
                                borderRadius: BorderRadius.circular(18)),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  CupertinoIcons.minus,
                                  color: Colors.white.withOpacity(0.4),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "2",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  CupertinoIcons.add,
                                  color: Colors.white.withOpacity(0.4),
                                ),
                              ],
                            ),
                          ),
                          const Text(
                            "\$ 30.20",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Coffee is a major source of antioxidants in the diet. it has many health benefits",
                        style: TextStyle(color: Colors.white.withOpacity(0.4)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Volume:  60 ml",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255,50,54,56),
                              borderRadius: BorderRadius.circular(18)
                            ),
                            child: const Text(
                              "Add to Cart",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: const Color(0xffe57734),
                              borderRadius: BorderRadius.circular(18)
                            ),
                            child: Icon(Icons.favorite_border,color: Colors.white,),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
