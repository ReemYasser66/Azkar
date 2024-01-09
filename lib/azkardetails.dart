import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Details extends StatefulWidget {
  Details({required this.AzkarText, required this.Azkarcounter});

  List<String> AzkarText;
  List<int> Azkarcounter;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  List<int> containerCounters = [];

  @override
  void initState() {
    super.initState();
    containerCounters = List<int>.from(widget.Azkarcounter);
  }

  void decrementCounter(int index) {
    setState(() {
      if (containerCounters[index] > 0) {
        containerCounters[index]--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 68,
        backgroundColor: const Color(0xff34585c),
        title:
        Container(
            height: 60,
            width: 60,
            child: Image.asset("images/Screenshot-2024-01-02-005015ed.png")),
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context, MaterialPageRoute(builder: (context){
                return Home();
              }));
            },
            icon: const Icon(CupertinoIcons.arrow_left_circle_fill, size: 30,color: Colors.white,)),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset('images/تنزيل (2).jpeg', fit: BoxFit.cover, height: double.infinity,),
          Container(
            alignment: Alignment.center,
            height: 570,
            width: 310,
            child: ListView.builder(
              itemCount: widget.AzkarText.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff264345),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            widget.AzkarText[index],
                            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 9,),
                          GestureDetector(
                            onTap: () => decrementCounter(index),
                            child: Container(
                              alignment: Alignment.center,
                              height: 25,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: containerCounters[index] > 0 ? Colors.white : Colors.green,
                              ),
                              child: Text(
                                "${containerCounters[index] == 0 ? '0' : containerCounters[index]}",
                                style: TextStyle(color: containerCounters[index] > 0 ? Color(0xff264345) : Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
