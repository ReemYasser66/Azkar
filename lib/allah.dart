import 'package:azkar/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Allah extends StatefulWidget {
  const Allah({super.key});

  @override
  State<Allah> createState() => _AllahState();
}

class _AllahState extends State<Allah> {

  List names=[
    'الله',
    'الرحمن',
    'الرحيم',
    'الملك',
    'القدوس',
    'السلام',
    'المؤمن',
    'المهيمن',
    'العزيز',
    'الجبار',
    'المتكبر',
    'الخالق',
    'البارئ',
    'المصور',
    'الغفار',
    'القهار',
    'الوهاب',
    'الرزاق',
    'الفتاح',
    'العليم',
    'القابض',
    'الباسط',
    'الخافض',
    'الرافع',
    'المعز',
    'المذل',
    'السميع',
    'البصير',
    'الحكم',
    'العدل',
    'اللطيف',
    'الخبير',
    'الحليم',
    'العظيم',
    'الغفور',
    'الشكور',
    'العلي',
    'الكبير',
    'الحفيظ',
    'المقيت',
    'الحسيب',
    'الجليل',
    'الكريم',
    'الرقيب',
    'المجيب',
    'الواسع',
    'الحكيم',
    'الودود',
    'المجيد',
    'الباعث',
    'الشهيد',
    'الحق',
    'الوكيل',
    'القوي',
    'المتين',
    'الولي',
    'الحميد',
    'المحصي',
    'البديع',
    'المبديء',
    'المعيد',
    'المحيي',
    'المميت',
    'الحي',
    'القيوم',
    'الواحد',
    'الأحد',
    'الصمد',
    'القادر',
    'المقدم',
    'المؤخر',
    'الأول',
    'الآخر',
    'الظاهر',
    'الباطن',
    'الوالي',
    'المتعالي',
    'البر',
    'التواب',
    'المنتقم',
    'العفو',
    'الرؤوف',
    'مالك الملك',
    'ذو الجلال والإكرام',
    'المقسط',
    'الجامع',
    'الغني',
    'المغني',
    'المانع',
    'الضار',
    'النافع',
    'النور',
    'الهادي',
    'البديع',
    'الباقي',
    'الوارث',
    'الرشيد',
    'الصبور',

  ];
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
      body:
      Stack(alignment: Alignment.center,
        children: [
        Image.asset('images/تنزيل (2).jpeg',fit: BoxFit.cover,height: double.infinity,),
          Container(alignment: Alignment.center,
            height: 570,
            width: MediaQuery.of(context).size.width*.9,
            child: GridView.builder(
                itemCount:names.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(alignment: Alignment.center,
                      child: Text(

                          names[index],
                        style: GoogleFonts.notoNastaliqUrdu(
                            color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff264345),

                      ),

                    ),
                  );
                }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),),
          )
        ],

      )
      ,
    );
  }
}
