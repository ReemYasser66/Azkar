import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Doaa extends StatefulWidget {
  const Doaa({super.key});

  @override
  State<Doaa> createState() => _DoaaState();
}

class _DoaaState extends State<Doaa> {
  List<String> doaaList = [
    'رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ',
    'رَبَّنَا لَا تُؤَاخِذْنَا إِن نَّسِينَا أَوْ أَخْطَأْنَا',
    'رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِن قَبْلِنَا',
    'رَبَّنَا لَا تُؤَاخِذْنَا بِمَا فَعَلَ السُّفَهَاءِ مِنَّا',
    'رَبَّنَا وَلا تُحَمِّلْنَا مَا لا طَاقَةَ لَنَا بِهِ',
    'رَبَّنَا وَأَفْرِغْ عَلَيْنَا صَبْرًا وَتَوَفَّنَا مُسْلِمِينَ',
    'رَبَّنَا آمَنَّا فَاغْفِرْ لَنَا وَارْحَمْنَا وَأَنتَ خَيْرُ الرَّاحِمِينَ',
    'رَبَّنَا لَا تَجْعَلْنَا فِتْنَةً لِّلَّذِينَ كَفَرُوا وَاغْفِرْ لَنَا رَبَّنَا إِنَّكَ أَنتَ الْعَزِيزُ الْحَكِيمُ',
    'رَبَّنَا وَأَبْعِدْ عَنَّا أَذَى الْجَهَنَّمَ إِنَّ عَذَابَهَا كَانَ غَرَامًا',
    'رَبَّنَا هَبْ لَنَا مِنْ أَزْوَاجِنَا وَذُرِّيَّاتِنَا قُرَّةَ أَعْيُنٍ وَاجْعَلْنَا لِلْمُتَّقِينَ إِمَامًا',
    'رَبِّ اشْرَحْ لِي صَدْرِي وَيَسِّرْ لِي أَمْرِي وَاحْلُلْ عُقْدَةً مِّن لِّسَانِي يَفْقَهُوا قَوْلِي',
    'رَبِّ اجْعَلْنِي مُقِيمَ الصَّلَاةِ وَمِن ذُرِّيَّتِي رَبَّنَا وَتَقَبَّلْ دُعَاءِ',
    'رَبِّ اغْفِرْ لِي وَلِوَالِدَيَّ وَلِلْمُؤْمِنِينَ يَوْمَ يَقُومُ الْحِسَابُ',
    'رَبَّنَا آتِنَا مِن لَّدُنكَ رَحْمَةً وَهَيِّئْ لَنَا مِنْ أَمْرِنَا رَشَدًا',
    'رَبَّنَا لَا تُؤَاخِذْنَا إِن نَّسِينَا أَوْ أَخْطَأْنَا رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِن قَبْلِنَا'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 68,
        backgroundColor: const Color(0xff34585c),
        title:
        SizedBox(
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
      body:
      Stack(alignment: Alignment.center,
        children: [
          Image.asset('images/تنزيل (2).jpeg',fit: BoxFit.cover,height: double.infinity,),
          Container(alignment: Alignment.center,
            height: 570,
            width: 320,
            child: ListView.builder(
                itemCount:doaaList.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff264345)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            doaaList[index],style: const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                      ),

                    ),
                  );
                }),
          )
        ],


      )
      ,
    );
  }
}
