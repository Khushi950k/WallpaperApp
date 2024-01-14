import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:wallpaper/Models/wallpaper_model.dart';
import 'package:wallpaper/Walllpaper%20Design/Nature.dart';
import 'package:http/http.dart'as http;
import 'package:wallpaper/Walllpaper%20Design/details_screen.dart';

class Wallpaper extends StatefulWidget {
  const Wallpaper({Key? key}) : super(key: key);

  @override
  State<Wallpaper> createState() => _WallpaperState();
}

class _WallpaperState extends State<Wallpaper> {
  TextEditingController nameController = TextEditingController();
  var mykey= "BjKgLY7dvgEayXV8ATS0wAJ7oz3EXTdVE32X4OEuEbSXLATUFhpXjIYO";
  late Future<WallpaperModel>wallpaper;
  @override
  void initState() {
    super.initState();
    wallpaper=getWallpapers("flower");
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.purple.shade50,
          body: SingleChildScrollView(
            //scrollDirection: Axis.vertical,
            child: Column(
                children: [
                  SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SizedBox(
                      width: 300,
                      child: TextField(
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          controller: nameController,
                          obscureText: false,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            focusColor: Colors.white,
                            hoverColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                    style: BorderStyle.solid, color: Colors.grey
                                )
                            ),
                            hintText: "Find Wallpaper..." ,
                            hintStyle: TextStyle(color: Colors.grey),
                             suffixIcon: IconButton(onPressed:(){
                      wallpaper=getWallpapers(nameController.text.toString());
                      setState(() {
      
                      });
                      },icon:Icon(Icons.search),),
                            // labelText: "Find Wallpaper"
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Best of the month", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),)),
                  ),
                  SizedBox(height: 30,),
                  FutureBuilder(future: wallpaper, builder: (context,snapshot){
                    if(snapshot.hasData){
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children:snapshot.data!.photos!.map((pics) => Padding(
                            padding: const EdgeInsets.only(left:15 ),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                    DetailScreen(image: pics.src!.portrait!)));
                              },
                              child: Container(
                                clipBehavior: Clip.antiAlias,
                                height: 200,
                                width: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                ),
                                child: Image.network("${pics.src!.portrait}",fit: BoxFit.cover,),
                              ),
                            ),
                          )).toList()
                        ),
                      );
                    }
                    else if(snapshot.hasError){
                      return Center(child: Text("${snapshot.hasError.toString()}"),);
                    }
                    return Center(child: CircularProgressIndicator(),);
                  }),
      
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top:10),
                          child: Container(
                            height: 220,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7lG5Cz_EvADUTNfbOcKfwSy5t31HgLsCPeQ&usqp=CAU"),
                                  fit: BoxFit.cover,
                                )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top:10),
                          child: Container(
                            height: 220,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsZfTlm0dZZ1twj8g97o-riMKEYSQZOkiH-A&usqp=CAU"),
                                  fit: BoxFit.cover,
                                )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top:10),
                          child: Container(
                            height: 220,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2ImMEdy2t-vl_Cf0HGxnOLiPwUgCIZlGn4g&usqp=CAU"),
                                  fit: BoxFit.cover,
                                )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top:10),
                          child: Container(
                            height: 220,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRG4ucRNV3yMReXIAxVx_J4AHGKtPKFj5_hyobchJOARbF1aT-a_l90LHjoDvA-vFR6NPQ&usqp=CAU"),
                                  fit: BoxFit.cover,
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top:10),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("The Color tone",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25), )),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, ),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.lightGreen,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top:8),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Categories",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25), )),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15,),
                        child: Container(
                          height: 100,
                          width: 155,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvdTONwOof2f6mPCXqVScCQNYun0cyrES_qQ&usqp=CAU"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Abstract", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800,
                                color: Colors.white),),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 155,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtGuTboKmMCqLY3hlNJYtQzLUckTosF9xzcA&usqp=CAU"),
                                fit: BoxFit.cover,
                              )
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("3D", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800,
                                color: Colors.white),),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15,),
                        child: Container(
                          height: 100,
                          width: 155,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image:DecorationImage(image: AssetImage("android/assets/images/wallpaper.jpg",),
                              fit: BoxFit.cover),
                              // image: DecorationImage(
                              //   image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6Rod6Zv5NUMyCPUzTpMMcA8Ib4LlDQL6w4g&usqp=CAU"),
                              //   fit: BoxFit.cover,
                              // )
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Night", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800,
                                color: Colors.white),),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 155,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXIXp2IjWOk3ioxTLadFl82YS4EpTesd5Y1Q&usqp=CAU"),
                                fit: BoxFit.cover,
                              )
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Nature()));
                              },
                              child: Text("Nature", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800,
                                  color: Colors.white),),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ]
            ),
          )
      ),
    );

  }
Future<WallpaperModel>getWallpapers(String search)async{
var url="https://api.pexels.com/v1/search?query=$search";
var response = await http.get(Uri.parse(url),headers:{"Authorization":mykey});
if(response.statusCode==200){
  var photos=jsonDecode(response.body);
  return WallpaperModel.fromJson(photos);
}
else{
  return WallpaperModel();
}
}

}
