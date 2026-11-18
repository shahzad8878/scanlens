
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget{
 @override Widget build(BuildContext c){
  return Scaffold(body:SafeArea(child:Padding(padding:EdgeInsets.all(18),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
   Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children:[Row(children:[Text("ScanLens",style:TextStyle(fontSize:22,fontWeight:FontWeight.w800)),SizedBox(width:8),Container(padding:EdgeInsets.symmetric(horizontal:10,vertical:4),decoration:BoxDecoration(gradient:LinearGradient(colors:[Color(0xFFE8C97A),Color(0xFFB89A3E)]),borderRadius:BorderRadius.circular(20)),child:Text("PRO",style:TextStyle(color:Colors.white,fontSize:11,fontWeight:FontWeight.w800)))]),Text("👤",style:TextStyle(fontSize:22))]),
   SizedBox(height:16),
   GestureDetector(onTap:()=>Navigator.pushNamed(c,'/camera'),child:Container(width:double.infinity,padding:EdgeInsets.all(22),decoration:BoxDecoration(color:Colors.black,borderRadius:BorderRadius.circular(22)),child:Column(children:[Text("📷",style:TextStyle(fontSize:32)),SizedBox(height:6),Text("Tap to Scan",style:TextStyle(color:Colors.white,fontSize:22,fontWeight:FontWeight.w800)),Text("Auto detect • No Watermark",style:TextStyle(color:Colors.white70,fontSize:12))]))),
   SizedBox(height:16), Row(children:[
    _card(c,"🪪","ID Card Mode",()=>Navigator.pushNamed(c,'/idcard')),
    _card(c,"🔤","OCR Copy Text",()=>Navigator.pushNamed(c,'/ocr')),
    _card(c,"✍️","eSign",()=>Navigator.pushNamed(c,'/esign')),
   ]),
   SizedBox(height:18), Text("Recent Files",style:TextStyle(fontSize:18,fontWeight:FontWeight.bold)),
   SizedBox(height:8), _file("Project_Contract.pdf","2.4 MB • Oct 9 • synced"), _file("Receipt_Invoice.pdf","1.1 MB • Oct 7"),
   SizedBox(height:8), Center(child:Text("⭐ Yehi Main Home hai — Yahan se hi saari screens khulengi",style:TextStyle(color:Color(0xFFB89A3E),fontSize:11))),
  ]))),
  bottomNavigationBar:BottomNavigationBar(currentIndex:0,onTap:(i){ if(i==1) Navigator.pushNamed(c,'/files'); if(i==2) Navigator.pushNamed(c,'/camera'); if(i==3) Navigator.pushNamed(c,'/settings'); },items:[BottomNavigationBarItem(icon:Text("🏠"),label:"Home"),BottomNavigationBarItem(icon:Text("📁"),label:"Files"),BottomNavigationBarItem(icon:Text("⛶"),label:"Scan"),BottomNavigationBarItem(icon:Text("⚙️"),label:"Settings")]),
  );
 }
 Widget _card(BuildContext c,String e,String t,VoidCallback on){ return Expanded(child:GestureDetector(onTap:on,child:Container(margin:EdgeInsets.only(right:8),padding:EdgeInsets.all(14),decoration:BoxDecoration(color:Color(0xFFE8F5E9),borderRadius:BorderRadius.circular(16)),child:Column(children:[Text(e,style:TextStyle(fontSize:26)),SizedBox(height:6),Text(t,style:TextStyle(fontSize:12,fontWeight:FontWeight.w600),textAlign:TextAlign.center)])))); }
 Widget _file(String n,String s){ return Container(margin:EdgeInsets.only(bottom:10),padding:EdgeInsets.all(12),decoration:BoxDecoration(border:Border.all(color:Colors.grey.shade200),borderRadius:BorderRadius.circular(16)),child:Row(children:[Text("📄"),SizedBox(width:12),Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text(n,style:TextStyle(fontWeight:FontWeight.bold,fontSize:13)),Text(s,style:TextStyle(color:Colors.grey,fontSize:11))])])); }
}
