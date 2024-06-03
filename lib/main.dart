import 'package:flutter/material.dart';

class dialog extends StatefulWidget {
  const dialog({super.key});

  @override
  State<dialog> createState() => _dialogState();
}

class _dialogState extends State<dialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('dialog '),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => Dialog(
                child:Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(' simple dialog page ')
                    ],
                  ),
                ),
              ),
            ),
            child:  Text('Simple  Dialog'),
          ),
          TextButton(
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: Text(' do yo want exit '),
                actions: [
                  Row(
                    children: [
                      Text(' cancel '),
                      TextButton(onPressed: () {
                        Navigator.of(context).pop();
                      }, child: Text('back'))
                    ],
                  )
                ],
              ),
            ),
            child:  Text('alert Dialog'),
          ),
          TextButton(
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => Dialog.fullscreen(
                child:Center(
                  child: Column(
                    children: [
                      Text(' full sreen  dialog page ')
                    ],
                  ),
                ),
              ),
            ),
            child:  Text('full Screen  Dialog'),
          ),
        ],
      ),
    );
  }
}