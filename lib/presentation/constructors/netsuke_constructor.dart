import 'package:flutter/material.dart';

class NetsukeConstructor extends StatelessWidget {
  final String id;
  final String title;
  final String description;
  final AssetImage image;
  const NetsukeConstructor(this.id, this.title, this.description, this.image,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: const TextStyle(fontSize: 25, fontFamily: "Lobster"),
        ),
        backgroundColor: Colors.black12,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage("assets/images/background.jpg"), // ваше изображение
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: ListView(
            shrinkWrap: true,
            children: [
              Center(
                child: Column(
                  children: [
                    Hero(
                      tag: id,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image(
                            image: image,
                            fit: BoxFit.cover,
                            height: 450,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      margin: const EdgeInsets.only(left: 11, right: 11),
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Lobster",
                                color: Colors.white),
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              description,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
