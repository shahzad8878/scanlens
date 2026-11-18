
import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget{
 @override Widget build(BuildContext c){
  return Scaffold(body:SafeArea(child:Padding(padding:EdgeInsets.all(20),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
   Text("Welcome to\nScanLens",style:TextStyle(fontSize:30,fontWeight:FontWeight.w800)),
   SizedBox(height:10), Text("Files save karne ke liye login karo. Bina login ke bhi 3 scans free.",style:TextStyle(color:Colors.grey)),
   SizedBox(height:30),
   _btn(c,"🍎  Continue with Apple",Colors.black,Colors.white,()=>Navigator.pushNamed(c,'/onboarding')),
   _btn(c,"G  Continue with Google",Colors.white,Colors.black,()=>Navigator.pushNamed(c,'/onboarding')),
   _btn(c,"Continue as Guest →",Color(0xFFF2F2F7),Colors.black,()=>Navigator.pushNamed(c,'/onboarding')),
   Spacer(), Center(child:Text("Next → Onboarding 1",style:TextStyle(color:Colors.grey,fontSize:12))),
  ]))));
 }
 Widget _btn(BuildContext c,String t,Color bg,Color fg,VoidCallback on){ return Container(width:double.infinity,margin:EdgeInsets.only(bottom:12),child:ElevatedButton(onPressed:on,style:ElevatedButton.styleFrom(backgroundColor:bg,foregroundColor:fg,padding:EdgeInsets.all(16),shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(14))),child:Text(t,style:TextStyle(fontWeight:FontWeight.w700)))); }
}
