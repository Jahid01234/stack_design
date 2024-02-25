
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {/// Start the statement
  HomePage ({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Facebook Page'),
        centerTitle: true,
      ),
       //backgroundColor: Colors.indigo,
       body:Column(
         children: [

           Stack
             (
             clipBehavior: Clip.none,
             alignment: Alignment.bottomCenter,
             children: [
               Container(
                 height: 200.0,
                 decoration: BoxDecoration(
                   color: Colors.red,
                   image: DecorationImage(
                     image: AssetImage('assets/images/im2.jpg'),
                     fit: BoxFit.cover
                   )
                 ),
               ),

               Positioned(
                 bottom: -65.0,
                 child: Container(
                   height: 180.0,
                   width:150.0,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                       border: Border.all(
                         color: Colors.white,
                         width: 2.0
                       ),
                       //color: Colors.red,
                       image: DecorationImage(
                           image: AssetImage('assets/images/jahid1.jpg'),
                           fit: BoxFit.cover,
                 
                       )
                   ),
                 ),
               ),


             ],
           ),
           SizedBox(height: 70),
           Text('Md. Jahid Hasan',
             style: TextStyle(
             fontWeight: FontWeight.bold,
               color: Colors.black,
               fontSize: 20
             ),),
           SizedBox(height: 20),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               buildActionItem(Icons.photo, 'Photos',   'https://images.google.com/'),
               buildActionItem(Icons.videocam, 'Videos',    'https://www.youtube.com/'),
               buildActionItem(Icons.location_on, 'Check In',   'https://maps.google.com/'),
             ],
           ),
           SizedBox(height: 20),

           Divider(
             height: 10,
             color: Colors.grey,
           ),




         ],
       )
    );
  }



  buildActionItem(IconData icon, String label, String url) {
  return GestureDetector(
      onTap: () async {
    if (await canLaunch(url))
    {
     await launch(url);
    }
    else
    {
       print('Could not launch $url');// Handle error
     }
    },

    child: Column(
      children: [
        Icon(icon, color: Colors.blue),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(color: Colors.black),
        ),
      ],
    ),
    );
}




}///End the statement


