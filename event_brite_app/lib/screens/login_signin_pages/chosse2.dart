import 'package:event_brite_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CchooseCustomerOrOrganiserPage extends StatelessWidget {
  const CchooseCustomerOrOrganiserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height:100),
          Text('Welcome Youssef Continue as a... ',style: TextStyle(
                  //decorationThickness: 500,
                  fontSize: 32,
                  fontFamily: 'Albertus Extra Bold',
                  color: Colors.black,
                  fontWeight: FontWeight.w900,)),
          SizedBox(height: 200,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
            children:[
              Stack(
                clipBehavior: Clip.none,
                children: [
                 
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    gradient:LinearGradient(colors: [
            secondaryColor,
            Colors.orange,
            Colors.purpleAccent,
            Color.fromARGB(255, 77, 1, 91),
          ],
          // stops: [
          //   0.4,0.6,0.6,0.8
          // ],
          
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,)
                    ,boxShadow: [
                      BoxShadow(
                        blurRadius: 40,
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 2,
                        offset: Offset(10, 10)
                      )
                    ]),
                    height: 150,
                    width: 150,
                    child: Card(
                      
                      
                      elevation: 10,
                              color: Colors.white,
                              
                              child: Column(
                                children: [SizedBox(height: 80,),
                                  Text('Organizer',style: TextStyle(
                                    fontSize: 28,
                                    color: Color.fromARGB(255, 64, 14, 91),
                                    fontWeight: FontWeight.w900),),
                                ],
                              ),
                    
                              ),
                  ),
                  Positioned(
                    right: -13,
                    bottom: 80,
                    child: Image.network('https://i.pinimg.com/originals/89/2d/90/892d90036c53bc15fd13f9f7f93e9a78.png',
                    height: 120,),
                  )
              ////https://i.pinimg.com/originals/89/2d/90/892d90036c53bc15fd13f9f7f93e9a78.png
                ],
              ),
            Stack(
                clipBehavior: Clip.none,
                children: [
                 
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    gradient:LinearGradient(colors: [
            secondaryColor,
            Colors.orange,
            Colors.purpleAccent,
            Color.fromARGB(255, 77, 1, 91),
          ],
          // stops: [
          //   0.4,0.6,0.6,0.8
          // ],
          
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,)
                    ,boxShadow: [
                      BoxShadow(
                        blurRadius: 40,
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 2,
                        offset: Offset(10, 10)
                      )
                    ]),
                    height: 150,
                    width: 150,
                    child: Card(
                      elevation: 10,
                              color: Colors.white,
                              
                              child: Column(
                                children: [SizedBox(height: 80,),
                                  Text('Attendee',style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.deepOrange,
                                    fontWeight: FontWeight.w900),),
                                ],
                              ),
                    
                              ),
                  ),
                  Positioned(
                    right: 25,
                    top: -70,
                    child: Image.network('https://th.bing.com/th/id/R.408450fca7d48fd99730c0c9fddbfefa?rik=nYGkFpvct8OoKA&riu=http%3a%2f%2fclipart-library.com%2fnew_gallery%2f12-122973_hip-hop-dancer-silhouette-png-transparent-background-hip.png&ehk=RAc0AVyNAT90Ga8dAnQpEdtM1GXvhEls91RvuSBPKNw%3d&risl=&pid=ImgRaw&r=0',
                    height: 120,),
                  )
              ////https://i.pinimg.com/originals/89/2d/90/892d90036c53bc15fd13f9f7f93e9a78.png
                ],
              ),
            ]
          )
        ],
      ),
   
   );
  }
}