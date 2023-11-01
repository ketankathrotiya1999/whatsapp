import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/system_mode.dart';

import 'Android_Modal.dart';
import 'Serchbar.dart';
import 'boolModal.dart';

class Apple extends StatefulWidget {
  const Apple({super.key});

  @override
  State<Apple> createState() => _AppleState();
}

class _AppleState extends State<Apple> {
  @override
  Widget build(BuildContext context) {
    final valuee=Provider.of<bool_Modal>(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [

          CupertinoSliverNavigationBar(
            largeTitle: Text('Chats',style: TextStyle(

            )),
            leading: Padding(
              padding: const EdgeInsets.only(top: 7),
              child: Text('Edit',style: TextStyle(fontSize: 20,color: Colors.blue)),
            ),
            trailing: Container(
              width: 120,
              child: Row(
                children: [
                  Consumer<bool_Modal>(
                    builder: (context, valuee, child) {
                      return Switch(value: valuee.abc, onChanged: (value){
                        valuee.changeBool(value);
                        print(value);

                      });
                    },
                  ),
                  Icon(Icons.camera_alt_outlined,size: 22,color: Colors.blue),

                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.edit_calendar,size: 22,color: Colors.blue),
                ],
              ),
            ),
          ),
          //
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(left: 20),

              child: Row(
                children: [
                  CupertinoSearch(),
                  SizedBox(width: 10,),
                  Icon(Icons.filter_list,color: Colors.blue,)
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20,),
          ),
          SliverToBoxAdapter(
            child:  Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Broadcast Lists',style: TextStyle(color: Colors.blue,fontSize: 17,fontWeight: FontWeight.bold),),
                  Text('New group',style: TextStyle(color: Colors.blue,fontSize: 17,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child:  Container(
              height: 50,
              child: Row(

                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.inventory_2,color: Colors.grey),
                  SizedBox(
                    width: 30,
                  ),
                  Text('Archive ',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            childCount: ChatData.length,
            (context, index) {

              return Row(

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
                        Text(ChatData[index].message,style: TextStyle(
                          fontSize: 14
                        )),

                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(ChatData[index].time),
                  )
                ],
              );
            },
          ))
        ],

      ),
    );
  }
}
