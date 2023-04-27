import 'package:catalog_netsuke/presentation/pages/home.dart';
import 'package:flutter/material.dart';

import 'presentation/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: netsukeTheme,
      home: const HomePage(),
    );
  }
}
