import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Hadeeth extends StatefulWidget {
  const Hadeeth({super.key});

  @override
  State<Hadeeth> createState() => _HadeethState();
}

class _HadeethState extends State<Hadeeth> {

  List hadeth=[
    'عَنْ أَمِيرِ المُؤمِنينَ أَبي حَفْصٍ عُمَرَ بْنِ الخَطَّابِ قَالَ : سَمِعْتُ رَسُولَ اللهِ ﷺ يَقُولُ : " إِنَّمَا الأَعْمَالُ بِالنِّيَّاتِ ، وَإنَّمَا لِكُلِّ امْرِىءٍ مَا نَوَى ، فَمَنْ كَانَتْ هِجْرَتُهُ إِلى اللهِ وَرَسُوله فَهِجْرتُهُ إلى اللهِ وَرَسُوُله ، وَمَنْ كَانَتْ هِجْرَتُهُ لِدُنْيَا يُصِيْبُهَا ، أَو امْرأَةٍ يَنْكِحُهَا ، فَهِجْرَتُهُ إِلى مَا هَاجَرَ إلَيْهِ "',
    'عَنْ أَبِيْ عَبْدِ الرَّحْمَنِ عَبْدِ اللهِ بْنِ عُمَرَ بْن الخَطَّابِ رَضِيَ اللهُ عَنْهُمَا قَالَ: سَمِعْتُ النبي ﷺ يَقُوْلُ: " بُنِيَ الإِسْلامُ عَلَى خَمْسٍ: شَهَادَةِ أَنْ لاَ إِلَهَ إِلاَّ الله وَأَنَّ مُحَمَّدَاً رَسُوْلُ اللهِ، وَإِقَامِ الصَّلاةِ، وَإِيْتَاءِ الزَّكَاةِ، وَحَجِّ البِيْتِ، وَصَوْمِ رَمَضَانَ "',
    'عَنْ أُمِّ المُؤمِنِينَ أُمِّ عَبْدِ اللهِ عَائِشَةَ - رَضِيَ اللهُ عَنْهَا - قَالَتْ: قَالَ رَسُوْلُ اللهِ : " مَنْ أَحْدَثَ فِيْ أَمْرِنَا هَذَا مَا لَيْسَ مِنْهُ فَهُوَ رَدٌّ " رواه البخاري ومسلم، وفي رواية لمسلم " مَنْ عَمِلَ عَمَلاً لَيْسَ عَلَيْهِ أَمْرُنَا فَهُوَ رَدٌّ "',
    'عَنْ أَبِي هُرَيْرَةَ عَبْدِ الرَّحْمَنِ بْنِ صَخْرٍ رَضِيَ الله تَعَالَى عَنْهُ قَالَ: سَمِعْتُ رَسُوْلَ اللهِ ﷺ يَقُوْلُ: (مَا نَهَيْتُكُمْ عَنْهُ فَاجْتَنِبُوهُ وَمَا أَمَرْتُكُمْ بِهِ فأْتُوا مِنْهُ مَا اسْتَطَعْتُمْ؛ فَإِنَّمَا أَهْلَكَ الَّذِيْنَ مِنْ قَبْلِكُمْ كَثْرَةُ مَسَائِلِهِمْ وَاخْتِلافُهُمْ عَلَى أَنْبِيَائِهِمْ) رواه البخاري ومسلم',
    'عَنْ أَبِيْ هُرَيْرَةَ رَضِيَ اللهُ عَنْهُ قَالَ: قَالَ رَسُوْلُ اللهِ ﷺ : (مِنْ حُسْنِ إِسْلامِ المَرْءِ تَرْكُهُ مَا لاَ يَعْنِيْهِ)',
    'عَنْ أَبِيْ حَمْزَة أَنَسِ بنِ مَالِكٍ رَضِيَ اللهُ تَعَالَى عَنْهُ خَادِمِ رَسُوْلِ اللهِ ﷺ عَن النبي ﷺ قَالَ: (لاَ يُؤمِنُ أَحَدُكُمْ حَتَّى يُحِبَّ لأَخِيْهِ مَا يُحِبُّ لِنَفْسِهِ) رواه البخاري ومسلم',
    'َعنِ ابْنِ مَسْعُودٍ رضي الله عنه قَالَ: قَالَ رَسُولُ اللهِ : (لا يَحِلُّ دَمُ امْرِئٍ مُسْلِمٍ إِلاَّ بإِحْدَى ثَلاثٍ: الثَّيِّبُ الزَّانِيْ، وَالنَّفْسُ بِالنَّفْسِ، وَالتَّاركُ لِدِيْنِهِ المُفَارِقُ للجمَاعَةِ) رواه البخاري ومسلم.',
    'عَن أَبِي هُرَيْرَةَ رضي الله عنه أَنَّ رَسُولَ اللهِ ﷺ قَالَ: (مَنْ كَانَ يُؤمِنُ بِاللهِ وَاليَوْمِ الآخِرِ فَلْيَقُلْ خَيْرَاً أَو لِيَصْمُتْ، وَمَنْ كَانَ يُؤمِنُ بِاللهِ وَاليَومِ الآخِرِ فَلْيُكْرِمْ جَارَهُ، ومَنْ كَانَ يُؤمِنُ بِاللهِ واليَومِ الآخِرِ فَلْيُكْرِمْ ضَيْفَهُ) رواه البخاري ومسلم.',
    'عَنْ أَبِي يَعْلَى شَدَّادِ بنِ أَوْسٍ رَضِيَ اللهُ تَعَالَى عَنْهُ عَنْ رَسُولِ اللهِ ﷺ قَالَ: (إِنَّ اللهَ كَتَبَ الإِحْسَانَ عَلَى كُلِّ شَيءٍ. فَإِذَا قَتَلْتُمْ فَأَحْسِنُوا القِتْلَةَ، وَإِذَا ذَبَحْتُمْ فَأَحْسِنُوا الذِّبْحَةَ، وَلْيُحِدَّ أَحَدُكُمْ شَفْرَتَهُ، وَلْيُرِحْ ذَبِيْحَتَهُ) رواه مسلم',
    'عَنْ أَبيْ مَسْعُوْدٍ عُقبَة بنِ عَمْرٍو الأَنْصَارِيِّ البَدْرِيِّ رضي الله عنه قَالَ: قَالَ رَسُوْلُ اللهِ ﷺ (إِنَّ مِمَّا أَدرَكَ النَاسُ مِن كَلاَمِ النُّبُوَّةِ الأُولَى إِذا لَم تَستَحْيِ فاصْنَعْ مَا شِئتَ) رواه البخاري.',
    'عَنْ أَبي سَعيدٍ الخُدريِّ رضي الله عنه قَالَ: سَمِعتُ رِسُولَ اللهِ ﷺ يَقولُ: (مَن رَأى مِنكُم مُنكَرَاً فَليُغَيِّرْهُ بِيَدِهِ، فَإِنْ لَمْ يَستَطعْ فَبِلِسَانِهِ، فَإِنْ لَمْ يَستَطعْ فَبِقَلبِه وَذَلِكَ أَضْعَفُ الإيمَانِ) رواه مسلم.',

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
            width: 310,
            child: ListView.builder(
                itemExtent: 180,
                itemCount:hadeth.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            hadeth[index],style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold)),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff264345)
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
