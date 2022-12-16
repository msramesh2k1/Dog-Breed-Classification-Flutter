import 'package:camera/camera.dart';
import 'package:dog_breed_classification/camerapage.dart';
import 'package:dog_breed_classification/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_tflite/flutter_tflite.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: 360,
        child: Center(
            child: 
                 Container(
                    height: 270,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => CameraPage()));
                          // initCamera();
                        },
                        child: Container(
                     height: 30,
                     width: 20,
                          
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Lottie.asset('assets/dog123.json',height: 200,width: 200,fit: BoxFit.cover),
                              Container(
                                height: 40,
                                width: 180,
                                child: Center(child: Text("Get Started",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
                         
                              decoration: BoxDecoration(
            color: Colors.brown[200],
                                  borderRadius: BorderRadius.circular(40)
                                ),
                               
    
                              )
                            ],
                          )),
    ),
                    width: 360,
                    
                  )
                // : Column(
                //   children: [
                //     Container(
                //       height: 270,
                //       width: 300,
                //       color: Colors.white,
                //       child: CameraPreview(cameraController!),
                //     ),
                //     Text(result,style: TextStyle(
                //       color: Colors.black,
                //       fontSize: 100
                //     ),),
                //   ],
                // ),),
        ),
                
                // AspectRatio(
                //     aspectRatio: cameraController!.value.aspectRatio,
                //     child: CameraPreview(cameraController!),
                //   )),
        decoration: BoxDecoration(
          color: Colors.green[200],
          image: DecorationImage(
            image: AssetImage('assets/back.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
