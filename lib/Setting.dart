import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Serchbar.dart';

class SettingIos extends StatefulWidget{
  @override
  State<SettingIos> createState() => _SettingIosState();
}

class _SettingIosState extends State<SettingIos> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
        backgroundColor: Colors.grey.shade300,
        child: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              backgroundColor: Colors.grey.shade300,
              border: Border.symmetric(vertical: BorderSide.none),
              largeTitle: Text('Settings',style: TextStyle(
                  fontSize: 30,color: Colors.black
              ),),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white70
                ),
                child: CupertinoSearch(),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(10),
                color: Colors.white70,
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-pbYSBKRGdlrrsTct4uPEcyz-LOiKo0QI1w&usqp=CAU'),
                        ),
                        SizedBox(width: 6,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('kathrotiya',style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.w500),),
                            
                            Text('🥰',style: TextStyle(
                              fontSize: 19,
                            ),),
                          ],
                        ),
                        SizedBox(width: 130,),
                        CircleAvatar(
                          radius: 21,
                          backgroundColor: Colors.grey.shade300,
                          child: Icon(
                            Icons.qr_code,size: 22,color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                    Container(margin: EdgeInsets.all(10) ,
                      height: 0.5,
                      color: Colors.black38,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 33,
                                  width: 33,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blueAccent
                                  ),
                                  child: Icon(Icons.face,color: Colors.white,size: 25,),
                                ),
                                SizedBox(width: 15,),
                                Text("Avatar",style: TextStyle(
                                    fontSize: 19,color: Colors.black87,fontWeight: FontWeight.w500
                                ),)
                              ],
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.black38,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(10),
                color: Colors.white70,
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 33,
                                  width: 33,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.orangeAccent
                                  ),
                                  child: Icon(Icons.face,color: Colors.white,size: 25,),
                                ),
                                SizedBox(width: 15,),
                                Text("Starred Messages",style: TextStyle(
                                    fontSize: 19,color: Colors.black87,fontWeight: FontWeight.w500
                                ),)
                              ],
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.black38,)
                        ],
                      ),
                    ),
                    Container(margin: EdgeInsets.all(10) ,
                      height: 0.5,
                      color: Colors.black38,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 33,
                                  width: 33,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.teal.shade500
                                  ),
                                  child: Icon(Icons.computer,color: Colors.white,size: 25,),
                                ),
                                SizedBox(width: 15,),
                                Text("Linked Devices",style: TextStyle(
                                    fontSize: 19,color: Colors.black87,fontWeight: FontWeight.w500
                                ),)
                              ],
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.black38,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(10),
                color: Colors.white70,
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 33,
                                  width: 33,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blueAccent.shade400
                                  ),
                                  child: Icon(Icons.key,color: Colors.white,size: 25,),
                                ),
                                SizedBox(width: 15,),
                                Text("Account",style: TextStyle(
                                    fontSize: 19,color: Colors.black87,fontWeight: FontWeight.w500
                                ),)
                              ],
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.black38,)
                        ],
                      ),
                    ),
                    Container(margin: EdgeInsets.all(10) ,
                      height: 0.5,
                      color: Colors.black38,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 33,
                                  width: 33,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.teal.shade300
                                  ),
                                  child: Icon(Icons.lock,color: Colors.white,size: 25,),
                                ),
                                SizedBox(width: 15,),
                                Text("Privacy",style: TextStyle(
                                    fontSize: 19,color: Colors.black87,fontWeight: FontWeight.w500
                                ),)
                              ],
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.black38,)
                        ],
                      ),
                    ),
                    Container(margin: EdgeInsets.all(10) ,
                      height: 0.5,
                      color: Colors.black38,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 33,
                                  width: 33,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.green
                                  ),
                                  child: Icon(Icons.chat,color: Colors.white,size: 25,),
                                ),
                                SizedBox(width: 15,),
                                Text("Chats",style: TextStyle(
                                    fontSize: 19,color: Colors.black87,fontWeight: FontWeight.w500
                                ),)
                              ],
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.black38,)
                        ],
                      ),
                    ),
                    Container(margin: EdgeInsets.all(10) ,
                      height: 0.5,
                      color: Colors.black38,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 33,
                                  width: 33,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.redAccent.shade400
                                  ),
                                  child: Icon(Icons.check_box_outline_blank,color: Colors.white,size: 25,),
                                ),
                                SizedBox(width: 15,),
                                Text("Notifications",style: TextStyle(
                                    fontSize: 19,color: Colors.black87,fontWeight: FontWeight.w500
                                ),)
                              ],
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.black38,)
                        ],
                      ),
                    ),
                    Container(margin: EdgeInsets.all(10) ,
                      height: 0.5,
                      color: Colors.black38,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 33,
                                  width: 33,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.teal.shade400
                                  ),
                                  child: Icon(Icons.currency_rupee_outlined,color: Colors.white,size: 25,),
                                ),
                                SizedBox(width: 15,),
                                Text("Payments",style: TextStyle(
                                    fontSize: 19,color: Colors.black87,fontWeight: FontWeight.w500
                                ),)
                              ],
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.black38,)
                        ],
                      ),
                    ),
                    Container(margin: EdgeInsets.all(10) ,
                      height: 0.5,
                      color: Colors.black38,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 33,
                                  width: 33,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.green.shade600
                                  ),
                                  child: Icon(Icons.signal_cellular_alt_2_bar,color: Colors.white,size: 25,),
                                ),
                                SizedBox(width: 15,),
                                Text("Storage and Data",style: TextStyle(
                                    fontSize: 19,color: Colors.black87,fontWeight: FontWeight.w500
                                ),)
                              ],
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.black38,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(10),
                color: Colors.white70,
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 33,
                                  width: 33,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blueAccent.shade400
                                  ),
                                  child: Icon(Icons.info_outline,color: Colors.white,size: 25,),
                                ),
                                SizedBox(width: 15,),
                                Text("Help",style: TextStyle(
                                    fontSize: 19,color: Colors.black87,fontWeight: FontWeight.w500
                                ),)
                              ],
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.black38,)
                        ],
                      ),
                    ),
                    Container(margin: EdgeInsets.all(10) ,
                      height: 0.5,
                      color: Colors.black38,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 33,
                                  width: 33,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.redAccent.shade400
                                  ),
                                  child: Icon(Icons.favorite,color: Colors.white,size: 25,),
                                ),
                                SizedBox(width: 15,),
                                Text("Tell a Friend",style: TextStyle(
                                    fontSize: 19,color: Colors.black87,fontWeight: FontWeight.w500
                                ),)
                              ],
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.black38,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}