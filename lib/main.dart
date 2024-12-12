import 'package:estore/features/Splash/presentation/splash_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCOvfG0fclI50abEpFyq5E5nUbsfSVLEKs",
          authDomain: "estore-dac3d.firebaseapp.com",
          projectId: "estore-dac3d",
          storageBucket: "estore-dac3d.appspot.com",
          messagingSenderId: "421881417478",
          appId: "1:421881417478:web:859018d9b58f0453945887"
         )
  );
  runApp(const FruitMarket());
}

class FruitMarket extends StatelessWidget {
  const FruitMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
      
    
    );
  }
}

