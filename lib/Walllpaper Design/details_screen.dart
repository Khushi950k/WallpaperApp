import 'dart:developer';

import 'package:async_wallpaper/async_wallpaper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gallery_saver/gallery_saver.dart';

class DetailScreen extends StatefulWidget {
  String image;
   DetailScreen({Key? key, required this.image}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: Stack(
        children:[Container(
          height: double.infinity,
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(),
        child: Image.network("${widget.image}",fit: BoxFit.cover,)),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      String path=widget.image;
                      GallerySaver.saveImage(path).then((value){
                        return log("Download Successfully");
                      });
                    },
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.white.withOpacity(.6)
                      ),
                    child: Icon(Icons.download),
                    ),
                  ),
                  SizedBox(width: 25,),
                  GestureDetector(
                    onTap: ()async{
                      String result;
                      try{
                        result=await AsyncWallpaper.setWallpaper(
                          url: widget.image,
                          wallpaperLocation: AsyncWallpaper.HOME_SCREEN,
                          toastDetails: ToastDetails.success(),
                          errorToastDetails: ToastDetails.error(),
                        )
                        ? "Wallpaper set" : "Failed to get wallpaper.";
                      }on PlatformException{
                        result : "Failed to get wallpaper." ;
                      }
                    },
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white.withOpacity(.6)
                      ),
                      child: Icon(Icons.settings),
                    ),
                  )
                ],
              ),
            ],
          )
        ]
      ),

      ),
    );
  }
}
