import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff34585c),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 90,),
          Container(
              height: 160,
              width: 160,
              child: Image.asset('images/Screenshot-2024-01-02-005015ed.png')),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child:
            Row(
              children: [
                Icon(Icons.refresh,color: Colors.white,),
                SizedBox(width: 7,),
                Text('تحديث التطبيق ', style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child:
            Row(
              children: [
                Icon(Icons.share,color: Colors.white,),
                SizedBox(width: 7,),
                Text('مشاركة التطبيق ', style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(15.0),
            child:
            InkWell(
              onTap: (){
                openWhatsAppWithMessage();
              },
              child: const Row(
                children: [
                  Icon(Icons.phone_iphone,color: Colors.white,),
                  SizedBox(width: 7,),
                  Text('تواصل معنا ', style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ),
          const SizedBox(height: 40,),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('اذا كان هذا التطبيق مفيدا لك فقم بتقييمه على جوجل بلاي من هنا',style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),),
          ),
          RatingBar.builder(
        initialRating: 3,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
        itemBuilder: (context, _) => const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        onRatingUpdate: (rating) {
          print(rating);
        },
      ),

        ],
      ),
    );
  }
  void openWhatsAppWithMessage() async {
    // Replace '123456789' with the phone number and 'Hello' with your specific message
    final phoneNumber = '+201096088176';
    final message = 'Hi...';

    // Use the WhatsApp API link with the text parameter
    final url = 'https://wa.me/$phoneNumber/?text=${Uri.encodeQueryComponent(message)}';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}
