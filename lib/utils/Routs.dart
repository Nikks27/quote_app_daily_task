import 'package:flutter/material.dart';

import '../DialogBox/simple_dialog_box.dart';
import '../Random Quote/random_quotes.dart';
import '../invoice/invoice.dart';




class quoteApp extends StatelessWidget {
  const quoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // '/' : (context) => dialog(),
        '/' : (context) => QuotesRandom(),
      },
    );
  }
}