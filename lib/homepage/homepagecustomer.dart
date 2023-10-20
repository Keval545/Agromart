import 'package:get/get.dart';
import 'package:image_card/image_card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kevalzalavadiya/homepage/search.dart';

class HomepageCustomer extends StatefulWidget {
  const HomepageCustomer({super.key});

  @override
  State<HomepageCustomer> createState() => _HomepageCustomerState();
}

class _HomepageCustomerState extends State<HomepageCustomer> {
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffffafcc),
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: AppBar(
              backgroundColor: const Color(0xff7f4ca5),
              leading: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    //navigating to the notification page
                  },
                  icon: const Icon(Icons.notifications)),
              title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/agromart.png',
                      width: 100,
                      height: 100,
                    ),
                  ]),
              actions: [
                IconButton(
                    onPressed: () {
                      Get.to(() => const Filterpage());
                    },
                    icon: const Icon(Icons.filter_alt)),
              ],
              centerTitle: true,
            )),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FillImageCard(
                    color: Colors.white,

                    width: 120,
                    heightImage: 150,
                    imageProvider: const AssetImage('assets/Cottonimage.jpg'),
                    //tags: [_tag('Category', () {}), _tag('Product', () {})],
                    title: TextButton(
                      style: const ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize.padded),
                      onPressed: () {
                        Navigator.pushNamed(context, "Cottonlistview");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Cotton',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    //description: _content(),
                  ),
                  FillImageCard(
                      width: 120,
                      heightImage: 150,
                      imageProvider:
                          const AssetImage('assets/Sorghumimage.jpg'),
                      //tags: [_tag('Category', () {}), _tag('Product', () {})],
                      title: TextButton(
                        style: const ButtonStyle(
                            tapTargetSize: MaterialTapTargetSize.padded),
                        onPressed: () {
                          Navigator.pushNamed(context, "Sorghumlistview");
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'SorghumS',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      )),
                  FillImageCard(
                    width: 120,
                    heightImage: 150,
                    imageProvider: const AssetImage('assets/snacksimage.jpg'),
                    //tags: [_tag('Category', () {}), _tag('Product', () {})],
                    title: TextButton(
                      style: const ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize.padded),
                      onPressed: () {
                        Navigator.pushNamed(context, "Snacklistview");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'SNACKS',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FillImageCard(
                    color: Colors.white,

                    width: 120,
                    heightImage: 150,
                    imageProvider: const AssetImage('assets/wheatimage.jpg'),
                    //tags: [_tag('Category', () {}), _tag('Product', () {})],
                    title: TextButton(
                      style: const ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize.padded),
                      onPressed: () {
                        Navigator.pushNamed(context, "wheatlistview");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'wheat',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  FillImageCard(
                    width: 120,
                    heightImage: 150,
                    imageProvider: const AssetImage('assets/peanutimage.jpg'),
                    //tags: [_tag('Category', () {}), _tag('Product', () {})],
                    title: TextButton(
                      style: const ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize.padded),
                      onPressed: () {
                        Navigator.pushNamed(context, "peanutlistview");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'peanut',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  FillImageCard(
                    width: 120,
                    heightImage: 150,
                    imageProvider: const AssetImage('assets/Riceimage.jpg'),
                    //tags: [_tag('Category', () {}), _tag('Product', () {})],
                    title: TextButton(
                      style: const ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize.padded),
                      onPressed: () {
                        Navigator.pushNamed(context, "Ricelistview");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Rice',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
