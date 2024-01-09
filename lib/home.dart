import 'package:azkar/allah.dart';
import 'package:azkar/azkar.dart';
import 'package:azkar/doaa.dart';
import 'package:azkar/Animation/fadeAnimation.dart';
import 'package:azkar/rokia.dart';
import 'package:azkar/sebhaa.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'hadeeth.dart';

class Home extends StatefulWidget {
   Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
List pics = [
  'images/6668724.gif',
  'images/6670952.gif',
  'images/6670952aa.gif',
  'images/5123826.png',
  'images/kaaba.png',
  'images/51238261.png'
  ];

List texts=['السبحة الإلكترونية', 'أحاديث','الأذكار','الأدعية','أسماء الله الحسنى','الرقية الشرعية'];

List pages=[Sebha(),Hadeeth(),Azkar(),Doaa(),Allah(),Rokia()];

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
          if (
          ZoomDrawer.of(context)!.isOpen()){
            ZoomDrawer.of(context)!.close();
          }else{
            ZoomDrawer.of(context)!.open();
          }
        },
        icon: Icon(Icons.menu,color: Colors.white,),
      ),

    ),
      body: Column(

        children: [
          SizedBox(
            height: 20,
          ),
          Center(child: Text('اقتباسات',style: TextStyle(fontFamily:'B Shekari', fontSize: 35),)),
          SizedBox(height: 9,),
          Container(
              width: 290,
              child: Text(
                  '{ لَقَدْ كَانَ لَكُمْ فِي رَسُولِ اللَّهِ أُسْوَةٌ حَسَنَةٌ لِمَنْ كَانَ يَرْجُو اللَّهَ وَالْيَوْمَ الْآخِرَ وَذَكَرَ اللَّهَ كَثِيرًا }'),alignment: Alignment.center,),
          SizedBox(height: 12,),
          Flexible(
            flex: 3,
            child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
                itemCount: pics.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2,mainAxisExtent: 160,),
                itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return pages[index];
                    }));
                  },
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                            height: 120,
                            child: Image.asset(pics[index])),
                        Text(texts[index], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15,fontFamily: 'Marhey'),textAlign: TextAlign.center,),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff34585c),
                      borderRadius: BorderRadius.circular(10)
                    ),

                  ),
                ),
              );
                }),
          )

        ],
      ),
    );
  }
}
