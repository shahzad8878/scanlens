
import 'package:flutter/material.dart';
class OnboardingScreen extends StatefulWidget{ @override _S createState()=>_S(); }
class _S extends State<OnboardingScreen>{
 int idx=0;
 final data=[
  {"icon":"📄","title":"Scan Any Paper in 2 Seconds","desc":"Camera se paper scan karo, auto PDF ban jayega. Ye sirf intro hai - Home baad me aayegi."},
  {"icon":"🔤","title":"Copy Text From Any Photo","desc":"Photo se text nikal ke copy karo. Asal OCR screen Home ke baad hogi."},
  {"icon":"✍️","title":"Sign Any PDF With Finger","desc":"Offer letter ya agreement pe ungli se sign karo. Asal eSign screen Home ke baad hogi."},
 ];
 @override Widget build(BuildContext c){
  var d=data[idx];
  return Scaffold(body:SafeArea(child:Padding(padding:EdgeInsets.all(20),child:Column(children:[
   Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children:[Text("ScanLens",style:TextStyle(fontWeight:FontWeight.bold)), TextButton(onPressed:()=>Navigator.pushReplacementNamed(c,'/home'),child:Text("Skip"))]),
   SizedBox(height:20), Container(height:240,decoration:BoxDecoration(color:Color(0xFFF2F2F7),borderRadius:BorderRadius.circular(18)),child:Center(child:Text(d["icon"]!,style:TextStyle(fontSize:80)))),
   SizedBox(height:18), Text(d["title"]!,style:TextStyle(fontSize:24,fontWeight:FontWeight.w800),textAlign:TextAlign.center),
   SizedBox(height:10), Text(d["desc"]!,style:TextStyle(color:Colors.grey),textAlign:TextAlign.center),
   Spacer(),
   SizedBox(width:double.infinity,child:ElevatedButton(onPressed:(){ if(idx<2) setState(()=>idx++); else Navigator.pushReplacementNamed(c,'/home'); },style:ElevatedButton.styleFrom(backgroundColor: idx==2?Color(0xFFD4AF37):Colors.black,padding:EdgeInsets.all(16)),child:Text(idx==2?"Get Started → HOME":"Next →"))),
   SizedBox(height:10), Text(idx==0?"● ○ ○":idx==1?"○ ● ○":"○ ○ ●",style:TextStyle(color:Colors.grey)),
  ]))));
 }
}
