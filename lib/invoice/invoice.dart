import 'package:flutter/material.dart';

import 'globalList.dart';


class InvoiceGenerator extends StatefulWidget {
  const InvoiceGenerator({super.key});

  @override
  State<InvoiceGenerator> createState() => _InvoiceGeneratorState();
}

class _InvoiceGeneratorState extends State<InvoiceGenerator> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:const Text(
            'Invoice generator',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 13),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/pdf');
                },
                child: const Icon(
                  Icons.picture_as_pdf_outlined,
                  size: 28,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(7),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Customer',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown.shade400,
                  ),
                ),
                trailing: Text(
                  '${invoiceDetails[selectedIndex]['name']}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown.shade400,
                  ),
                ),
              ),
              const Divider(),
              const SizedBox(
                height: 27,
              ),
              const Text(
                'Invoice Items',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const ListTile(
                title: Text(
                  'Asus Vivobook ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                trailing: Text(
                  'Rs. 61000/-',
                  style: TextStyle(fontSize: 13),
                ),
              ),
              const ListTile(
                title: Text(
                  'Application',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                trailing: Text(
                  'Rs. 1999/-',
                  style: TextStyle(fontSize: 13),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.brown.shade400),
                  ),
                  Text(
                    '${invoiceDetails[selectedIndex]['price']}',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade400),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}