import 'package:flutter/material.dart';
import '../constructors/netsuke_constructor.dart';

class NetsukePage extends StatelessWidget {
  final String id;
  final String title;
  final String description;
  final AssetImage image;
  const NetsukePage(this.id, this.title, this.description, this.image,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return NetsukeConstructor(id, title, description, image);
  }
}
