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
        title: Text('Dialog '),
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
                      Text(' Simple DialogBox page ')
                    ],
                  ),
                ),
              ),
            ),
            child:  Text('Simple  DialogBox'),
          ),
          TextButton(
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: Text(' Do Yo Want Exit '),
                actions: [
                  Row(
                    children: [
                      Text(' cancel '),
                      TextButton(onPressed: () {
                        Navigator.of(context).pop();
                      }, child: Text('Back'))
                    ],
                  )
                ],
              ),
            ),
            child:  Text('Alert Dialog'),
          ),
          TextButton(
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => Dialog.fullscreen(
                child:Center(
                  child: Column(
                    children: [
                      Text('fullsreen dialogBox page ')
                    ],
                  ),
                ),
              ),
            ),
            child:  Text('fullScreen DialogBox'),
          ),
        ],
      ),
    );
  }
}