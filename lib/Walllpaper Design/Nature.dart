import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper/Walllpaper%20Design/Nature1.dart';
class Nature extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 15),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Nature",style: TextStyle(fontSize: 45, fontWeight: FontWeight.w700),)),
            ),
            SizedBox(height: 3,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("36 wallpaper available", style: TextStyle(fontSize: 22,
                    color: Colors.grey, fontWeight: FontWeight.w600),),
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Container(
                    height: 230,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGRAvIUdNuDYtLfqlikKjqBiCMQwJEAG2Fxw&usqp=CAU"),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                  SizedBox(width: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Nature1()));
                    },
                    child: Container(
                      height: 250,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRQfKqyDAXHpiwJTZKsUz_ZS6aRksDR42GiQ&usqp=CAU"),
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
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Container(
                    height: 230,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSK9AJ53TfYaplJys6Ls5ar3CXmnFDomeZCMg&usqp=CAU"),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 280,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQaQibrg8U0aU9jpFR5GTy9PoD7HMzBxC_uQ&usqp=CAU"),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Container(
                    height: 230,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSPR8lHSYozYRzJ08q2KNVXvpy5vhK8i2alA&usqp=CAU"),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsiscpQ-NIYCpULvWFBwpB88cyMjCx47_scg&usqp=CAU"),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
