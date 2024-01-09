import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Rokia extends StatefulWidget {
  const Rokia({super.key});

  @override
  State<Rokia> createState() => _RokiaState();
}

class _RokiaState extends State<Rokia> {
  List rokia =[
    '(( أعوذ بكلمات الله التامات من شر ما خلق ))',
    '(( أعوذ بكلمات الله التامة من كل شيطان وهامة ، ومن كل عين لامة ))',
    '(( أعوذ بكلمات الله التامة التي لا يجاوزهن بر ولا فاجر من شر ما ينزل من السماء ، ومن شر ما يعرج فيها ، ومن شر ما ذرأ في الأرض ، ومن شر ما يخرج منها ، ومن فتن الليل والنهار ، ومن شر طوارق الليل والنهار إلا طارقاً يطرق بخير يا رحمن )) .',
    '(( أعوذ بكلمات الله التامة من غضبه وعقابه ، ومن شر عباده ومن شر همزات الشياطين وأن يحضرون )) .',
    '(( اللهم إني أعوذ بوجهك الكريم ، وكلماتك التامة من شر ما أنت آخذ بناصيته )) .',
    '(( اللهم أنت تكشف المأثم والمغرم ن ، اللهم إنه لا يهزم جندك ولا يخلف وعدك ، سبحانك وبحمدك )) .',
    '(( حسبي الله لا إله إلا هو عليه توكلت وهو رب العرش العظيم ))',
    '(( بسم الله أرقيك من كل داء يؤذيك ومن شر كل نفس أو عين حاسد الله يشفيك،باسم الله أرقيك ))'

  ];
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
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
              height: height*0.78,
              width: width*0.86,
              child: ListView.builder(
                  itemCount:rokia.length,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xff264345)
                        ),
                        child: Text(
                            rokia[index],style: const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),

                      ),
                    );
                  }),
            )
          ],

        )
    );
  }
}
