import 'package:flutter/material.dart';

class Nature1 extends StatefulWidget {
  const Nature1({Key? key}) : super(key: key);

  @override
  State<Nature1> createState() => _Nature1State();
}

class _Nature1State extends State<Nature1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: 800,
        width: 400,
        decoration: BoxDecoration(
            color: Colors.orange,
           // borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRQfKqyDAXHpiwJTZKsUz_ZS6aRksDR42GiQ&usqp=CAU"),
              fit: BoxFit.cover,
            )
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Row(
                 crossAxisAlignment: CrossAxisAlignment.end,
            children: [
             ElevatedButton(onPressed: (){}, child: Icon(Icons.download_for_offline_outlined,
               color: Colors.grey,),
               ),
              FloatingActionButton.extended(
                onPressed: () {},
                icon: Icon(Icons.save_alt),
                label: Text("Save"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


