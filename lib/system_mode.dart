import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'Android_Modal.dart';
import 'boolModal.dart';
import 'main.dart';


class TabBarDemo extends StatefulWidget {
  const TabBarDemo({super.key});

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}


class _TabBarDemoState extends State<TabBarDemo> {
  @override
  Color color = Color(0xff00A783);
  bool abc=true;

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final valuee=Provider.of<bool_Modal>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            title:  Row(
              children: [
                SizedBox(width: 20,),
                Text('Whatsapp',style: TextStyle(color: Colors.white,fontSize: 20,  fontWeight: FontWeight.w600)),
                Spacer(),
                IconButton(onPressed: (){
                  getLostData();
                }, icon:  Icon(Icons.camera_alt_outlined,color: Colors.white)),
                SizedBox(
                  width: 18,
                ),
                Icon(Icons.search_rounded,color: Colors.white),
                Consumer<bool_Modal>(
                    builder: (context, valuee, child) {
                      return Switch(value: valuee.abc, onChanged: (value){
                      valuee.changeBool(value);
                      print(value);

                      });
                    },
                )

              ],
            ),
            backgroundColor: Color(0xff008069),
            bottom: const TabBar(
              overlayColor: MaterialStatePropertyAll(
                  Color(0xff008069)),
              labelColor: Color(0xff008069) ,
                dividerColor:  Colors.white,
                indicatorColor: Colors.white ,
                indicatorSize: TabBarIndicatorSize.tab,

                tabs: [

                  Tab(
                    
                    child:  Icon(Icons.groups,size: 30,color: Colors.white,),
                  ),

                  Tab(
                    child: Text('Chats',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600)),
                  ),
                  Tab(
                      child: Text('Status',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600))
                  ),
                  Tab(
                    child: Text('Calls',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600)),
                  ),

                ]
            ),

          ),
          body:  TabBarView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30,),
                  Image.asset('assets/image/whatsapp.jpg',height: 200,width: 200,),
                  SizedBox(height: 20,),
                  Text(
                    'Stay connected with a community',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21.5
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Comunities bring members together in \ntopic-basedngroups. and make it easy to get admin announcements. Any community you're added to will appear here.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: width,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'See example communities',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15
                            ),
                          ),
                          SizedBox(width: 5,),
                          Icon(Icons.arrow_forward_ios,color: color,size: 15),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    width: width-70,
                    height: 40,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        'Start your community',
                        style: TextStyle(
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Scaffold(
                floatingActionButton: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),color:  Color(0xff008069),
                  ),
                  child: Icon(Icons.message_rounded),
                ),
                body:ListView.builder(
                  itemCount:ChatData.length ,
                  itemBuilder: (context, index) {
                  return Column(
                    children: [

                      Divider(
                        height: 10,

                      ),
                      ListTile(
                        leading: CircleAvatar(

                          backgroundImage: AssetImage(ChatData[index].image),
                          radius: 25,

                        ),
                        title: Text(
                        ChatData[index].name
                    ),
                        subtitle: Text(
                          ChatData[index].message
                        ),
                        trailing: Text(
                            ChatData[index].time

                        ),
                      )
                    ],
                  );
                },),
              ),
              Scaffold(
                floatingActionButton: Container(
                  margin: EdgeInsets.only(top: 450),
                  child: Column(

                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),color:Colors.greenAccent.shade100,
                        ),
                        child: Icon(Icons.mode_edit_outline,color:  Color(0xff008069)
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),color:  Color(0xff008069),
                        ),
                        child: Icon(Icons.camera_alt,color: Colors.white,),
                      ),
                    ],
                  ),
                ),
                body: ListView.builder(
                  itemCount:ChatData.length ,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Divider(
                          height: 10,

                        ),
                        ListTile(
                          leading: CircleAvatar(
                            radius: 29,
                            backgroundColor: Colors.green,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(ChatData[index].image),

                              radius: 25,

                            ),
                          ),
                          title: Text(
                              ChatData[index].name
                          ),
                          subtitle: Text(
                              ChatData[index].time
                          ),

                        )
                      ],
                    );
                  },),
              ),
              Scaffold(
                floatingActionButton: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),color:  Color(0xff008069),
                  ),
                 child: Icon(Icons.add_ic_call_outlined),
                ),
                body : ListView.builder(
                  itemCount:ChatData.length ,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Divider(
                          height: 10,

                        ),
                        ListTile(
                          leading: CircleAvatar(
                            //backgroundImage: NetworkImage(ChatData[index].image),
                            //child: Image.asset('assets/image/download.jpg'),
                            backgroundImage: AssetImage(ChatData[index].image),
                            radius: 25,

                          ),
                          title: Text(
                              ChatData[index].name
                          ),
                          subtitle: Text(
                              ChatData[index].time1
                          ),
                          trailing: Icon(Icons.call,color: Colors.green,

                          ),
                        )
                      ],
                    );
                  },),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Future<void> getLostData() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    final XFile? photo = await picker.pickImage(source: ImageSource.camera);
// Pick a video.
    final XFile? galleryVideo =
    await picker.pickVideo(source: ImageSource.gallery);
// Capture a video.
    final XFile? cameraVideo = await picker.pickVideo(source: ImageSource.camera);
// Pick multiple images.
    final List<XFile> images = await picker.pickMultiImage();
// Pick singe image or video.
    final XFile? media = await picker.pickMedia();
// Pick multiple images and videos.
    final List<XFile> medias = await picker.pickMultipleMedia();

  }
}