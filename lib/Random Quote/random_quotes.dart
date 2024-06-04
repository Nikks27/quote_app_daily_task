import 'dart:math';
import 'package:flutter/material.dart';
import '../utils/Model.dart';
import '../utils/quoteList.dart';


QuoteModel? quoteModel;

final List<Color> cardColors = [
  Colors.brown,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.purple,
  Colors.red,
  Colors.grey,
  Colors.pink,
  Colors.blueAccent,
  Colors.lightGreenAccent,
];

class QuotesRandom extends StatefulWidget {
  const QuotesRandom({super.key});

  @override
  State<QuotesRandom> createState() => _QuotesRandomState();
}

class _QuotesRandomState extends State<QuotesRandom> {
  @override
  void initState() {
    // TODO: implement initState
    quoteModel = QuoteModel.toList(quoteList);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text(
          'Quotes',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              quoteModel!.quoteModelList.length,
                  (index) => Card(
                color: cardColors[index % cardColors.length],
                child: ListTile(
                  title: Text(
                    quoteModel!.quoteModelList[index].quote!,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    quoteModel!.quoteModelList[index].author!,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Random random = Random();
          int x = random.nextInt(quoteModel!.quoteModelList.length);

          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(quoteModel!.quoteModelList[x].author!,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
              content: Text(quoteModel!.quoteModelList[x].quote!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),

              actions: [
                TextButton(onPressed: () {
                  setState(() {
                    Navigator.of(context).pop();
                  });
                }, child: Text('back',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),)),
                TextButton(onPressed: () {
                  setState(() {
                    Navigator.of(context).pop();
                  });
                }, child: Text('save',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),)),
              ],
            ),
          );
        },
        backgroundColor: Colors.teal,
        child: Icon(Icons.notification_add,color: Colors.white,size: 34,),
      ),
    );
  }
}