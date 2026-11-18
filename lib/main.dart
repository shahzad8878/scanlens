
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/home_screen.dart';
import 'screens/camera_screen.dart';
import 'screens/crop_screen.dart';
import 'screens/preview_screen.dart';
import 'screens/files_screen.dart';
import 'screens/ocr_screen.dart';
import 'screens/esign_screen.dart';
import 'screens/idcard_screen.dart';
import 'screens/paywall_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/language_screen.dart';

void main(){ runApp(ScanLensApp()); }

class ScanLensApp extends StatelessWidget{
  @override Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:'ScanLens',
      theme: ThemeData(primaryColor:Colors.black, scaffoldBackgroundColor:Colors.white, fontFamily:'Inter', useMaterial3:true),
      initialRoute:'/login',
      routes:{
        '/login':(_)=>LoginScreen(),
        '/onboarding':(_)=>OnboardingScreen(),
        '/home':(_)=>HomeScreen(),
        '/camera':(_)=>CameraScreen(),
        '/crop':(_)=>CropScreen(),
        '/preview':(_)=>PreviewScreen(),
        '/files':(_)=>FilesScreen(),
        '/ocr':(_)=>OCRScreen(),
        '/esign':(_)=>ESignScreen(),
        '/idcard':(_)=>IDCardScreen(),
        '/paywall':(_)=>PaywallScreen(),
        '/settings':(_)=>SettingsScreen(),
        '/language':(_)=>LanguageScreen(),
      },
    );
  }
}
