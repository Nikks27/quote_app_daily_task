import 'package:flutter/material.dart';

import '../DialogBox/simple_dialog_box.dart';
import '../Random Quote/random_quotes.dart';
import '../TongalView/tongalview.dart';
import '../invoice/invoice.dart';
import '../invoice/invoicegenrate.dart';
import '../invoice/pdf.dart';




class quoteApp extends StatelessWidget {
  const quoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // '/' : (context) => dialog(),
        '/' : (context) => InvoiceDetails(),
         '/detail': (context) => const InvoiceGenerator(),
         '/pdf': (context) => const PdfScreen(),
      },
    );
  }
}