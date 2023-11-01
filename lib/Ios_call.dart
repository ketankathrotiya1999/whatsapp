import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Android_Modal.dart';
import 'Serchbar.dart';

class Ios_Call extends StatefulWidget {
  const Ios_Call({super.key});

  @override
  State<Ios_Call> createState() => _Ios_CallState();
}

class _Ios_CallState extends State<Ios_Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text('Calls',style: TextStyle(

            )),
            leading: Padding(
              padding: const EdgeInsets.only(top: 7),
              child: Text('Edit',style: TextStyle(fontSize: 20,color: Colors.blue)),
            ),
            trailing: Container(
              width: 60,
              child: Icon(Icons.add_call,size: 22,color: Colors.blue),
            ),

          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoSearch(),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white70,borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  Icon(Icons.link_outlined,color: Colors.blue),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Create Call Link',style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),),
                      Text('Share Your Link for your whatsapp calll',style: TextStyle(fontSize: 10,color: Colors.black38,fontWeight: FontWeight.w500),)
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child:  Container(
    margin: EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 45),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(color: Colors.white70,borderRadius: BorderRadius.circular(10)),


    child: Column(
    children: [
    for(int index = 0 ; index < ChatData.length;index++)...[
      Column(
        children: [
          Row(

            children: [
              Container(
                margin:EdgeInsets.all(10),
                child:  CircleAvatar(

                  backgroundImage: AssetImage(ChatData[index].image),
                  radius: 25,

                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10,left: 10),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(ChatData[index].name,style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20
                    )),
                    Text(ChatData[index].message1,style: TextStyle(
                        fontSize: 14
                    )
                    ),

                  ],
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(left: 10,right: 5),
                child: Text(ChatData[index].time),
              ),
              Icon(Icons.info_outline,color: Colors.blue,)
            ],
          ),
          Container(
            margin:EdgeInsets.only(left: 80) ,

            height: 1,
            width: MediaQuery.of(context).size.width,
            color: Colors.black12,
          )
        ],
      )
    ]
    ],
    ),
    ),
          ),

        ],

      ),
    );
  }
}
