import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/system_mode.dart';

import 'Android_Modal.dart';
import 'Serchbar.dart';

class Ios_Status extends StatefulWidget {
  const Ios_Status({super.key});

  @override
  State<Ios_Status> createState() => _Ios_StatusState();
}

class _Ios_StatusState extends State<Ios_Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            backgroundColor: Colors.grey.shade300,
            largeTitle: Text('Status',style: TextStyle(

            )),
            leading: Padding(
              padding: const EdgeInsets.only(top: 7),
              child: Text('Privacy',style: TextStyle(fontSize: 20,color: Colors.blue)),
            ),

          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10),
              child: CupertinoSearch(
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
             
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.white70,borderRadius: BorderRadius.circular(10)),
              child: Row(

                children: [
                  Padding(

                    padding:  EdgeInsets.only(right: 8,left: 8),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('My Status',style: TextStyle(
                          fontSize: 20,fontWeight: FontWeight.bold
                        )),
                        Text('Add to My Status'),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.camera_alt,color: Colors.blue),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.edit,color: Colors.blue,),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(child: Padding(

            padding: const EdgeInsets.only(left: 25,top: 30),
            child: Text('RECENT UPDATES'),
          )),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 45),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.white70,borderRadius: BorderRadius.circular(10)),


              child: Column(
                children: [
                  for(int index = 0 ; index < ChatData.length;index++)...[
                    Row(

                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(26),color: Colors.blue) ,
                          child: Container(
                            height: 52,
                            width: 52,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(26),color: Colors.white) ,
                            margin: EdgeInsets.all(2),
                            padding: EdgeInsets.all(2),
                            child:  CircleAvatar(

                              backgroundImage: AssetImage(ChatData[index].image),
                              radius: 25,

                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10,left: 10,top: 10),
                          child: Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(ChatData[index].name,style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20
                              )),
                              Text('40 m ago',style: TextStyle(
                                  fontSize: 14
                              )),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                height: 1,
                                width: 289,
                                color: Colors.black12,)
                            ],
                          ),
                        ),

                      ],
                    )
                  ]
                ],
              ),
            ),
          ),

        ],

      ),
    );;
  }
}
