import 'package:flutter/material.dart';

class query extends StatefulWidget {
  const query({Key? key}) : super(key: key);

  @override
  State<query> createState() => _queryState();
}

class _queryState extends State<query> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text("Media Query", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body:orientation==Orientation.landscape?
     // width>600?
      Center(
        child: Row(
          children: [
            Container(
              height: height * 0.1,
              width: width * 0.1,
              color: Colors.red,
            ),
            SizedBox(width: 10,),
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            )
        ],
            ),
      ):Column(
        children: [
          Container(
            height:height * 0.2,
            width:width * 0.2,
            color: Colors.red,
          ),
          SizedBox(height: 10,),
          Container(
            height: 200,
            width: 200,
            color: Colors.blue,
          )
        ],
      )

      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text("Height= ${height}"),
      //       Text("Width= ${width}")
      //     ],
      //   ),
      // ),
    );
  }
}
