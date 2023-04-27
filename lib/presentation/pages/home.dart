import 'dart:ui';

import 'package:catalog_netsuke/presentation/pages/netsuke_page.dart';
import 'package:catalog_netsuke/presentation/pages/plan_page.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';

import '../../netsuke_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: true,
              title: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Row(
                  children: const [
                    Icon(Icons.waves),
                    SizedBox(width: 8),
                    Text(
                      'Нэцкэ каталог',
                      style: TextStyle(
                        fontFamily: "Lobster",
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                Container(
                  margin: const EdgeInsets.only(top: 3, bottom: 3, right: 5),
                  width: 100,
                  child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.pink)),
                    onPressed: () {
                      final route = MaterialPageRoute(
                          builder: (context) => const PlanPage());

                      Navigator.pushAndRemoveUntil(
                          context, route, (route) => true);
                    },
                    child: const Text(
                      "План",
                      style: TextStyle(
                        fontSize: 19,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                )
              ],
              backgroundColor: Colors.black12,
            ),
            SliverLayoutBuilder(
              builder: (BuildContext context, SliverConstraints constraints) {
                final double screenWidth = MediaQuery.of(context).size.width;

                final int columnCount = screenWidth > 1500 ? 3 : 2;
                final double rowSpacing = screenWidth > 1500 ? 21 : 10;
                final double columnSpacing = screenWidth > 1500 ? 21 : 10;
                final double childAspect = screenWidth > 1500 ? 0.95 : 0.9;
                return SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: columnCount,
                      mainAxisSpacing: rowSpacing,
                      crossAxisSpacing: columnSpacing,
                      childAspectRatio: childAspect),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      final netsuke =
                          netsukeList[index]; // from netsukeList constant
                      return GestureDetector(
                        onTap: () {
                          final route = MaterialPageRoute(
                              builder: (context) => NetsukePage(
                                  netsuke.id,
                                  netsuke.title,
                                  netsuke.description,
                                  netsuke.image));

                          Navigator.pushAndRemoveUntil(
                              context, route, (route) => true);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Card(
                            child: Column(
                              children: [
                                Hero(
                                    tag: netsuke.id,
                                    child: Image(image: netsuke.image)),
                                FittedBox(
                                  child: Text(
                                    netsuke.title,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    childCount: netsukeList.length,
                  ),
                );
              },
            ),

            // author
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Text(
                  "All made by Vladislav Smirnov - 7V",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
