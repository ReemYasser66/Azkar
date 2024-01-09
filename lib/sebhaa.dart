import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

class Sebha extends StatefulWidget {
  const Sebha({Key? key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  List<String> tasbeh = [
    'سبحان الله',
    'الحمد لله',
    'لا إله إلا الله',
    'لا حول ولا قوة إلا بالله',
    'أستغفر الله',
    'اللهم صلِ وسلم وبارك على سيدنا محمد',
  ];
  List<int> counters = [0, 0, 0, 0, 0, 0]; // Initial counter values
   TextEditingController searchController=TextEditingController();

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
  }

  void incrementCounter(int index) {
    setState(() {
      counters[index]++;
    });
  }

  void decrementCounter(int index) {
    setState(() {
      if (counters[index] > 0) {
        counters[index]--;
      }
    });
  }

  List<String> get filteredTasbeh {
    final String query = searchController.text.toLowerCase();
    return tasbeh
        .where((String item) => item.toLowerCase().contains(query))
        .toList(); // Add .toList() to explicitly cast to List<String>
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 68,
        backgroundColor: const Color(0xff34585c),
        title: SizedBox(
          height: 47,
          child: TextField(
            cursorColor: Colors.black,
            controller: searchController,
            decoration: InputDecoration(
              suffixIcon: InkWell(
                  onTap: (){
                    searchController.clear();
                    setState(() {
                    });
                  },
                  child: const Icon(Icons.cancel,size: 20,)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40)
              ),
                focusedBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(color: Colors.white, width: 2.0),
              ),
              hintText: 'Search...',
              fillColor: Colors.white,
              filled: true,
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              isDense: true
            ),
            onChanged: (value) {
              setState(() {}); // Update the UI when the user types
            },
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context) {
              return Home();
            }));
          },
          icon: const Icon(CupertinoIcons.arrow_left_circle_fill, size: 30, color: Colors.white),
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'images/تنزيل (2).jpeg',
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          Container(
            alignment: Alignment.center,
            height: 570,
            width: 300,
            child: Column(
              children: [

                Expanded(
                  child: ListView.builder(
                    itemCount: filteredTasbeh.length,
                    itemBuilder: (context, index) {
                      final item = filteredTasbeh[index];
                      // final counterIndex = tasbeh.indexOf(item);
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xff264345),
                          ),
                          child: Column(
                            children: [
                              Text(
                                item,
                                style:  GoogleFonts.notoNastaliqUrdu(
                                  color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold,
                                )
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: const Color(0xff264345),
                                      backgroundColor: Colors.white,
                                      shadowColor: Colors.white,
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(32.0),
                                      ),
                                      minimumSize: const Size(15, 22),
                                    ),
                                    onPressed: () => incrementCounter(index),
                                    child: const Text('+'),
                                  ),
                                  const SizedBox(width: 28),
                                  AnimatedFlipCounter(
                                    value: counters[index],
                                    duration: const Duration(milliseconds: 300),
                                    textStyle: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(width: 28),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: const Color(0xff264345),
                                      backgroundColor: Colors.white,
                                      shadowColor: Colors.white,
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(32.0),
                                      ),
                                      minimumSize: const Size(15, 22),
                                    ),
                                    onPressed: () => decrementCounter(index),
                                    child: const Text('-'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
