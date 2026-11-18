
import 'package:flutter/material.dart';
class PreviewScreen extends StatelessWidget{
 @override Widget build(BuildContext c){
  return Scaffold(appBar:AppBar(title:Text("Preview")),body:Padding(padding:EdgeInsets.all(20),child:Column(children:[
   Container(width:double.infinity,padding:EdgeInsets.all(20),decoration:BoxDecoration(color:Color(0xFFF9F9F9),borderRadius:BorderRadius.circular(14),border:Border.all(color:Colors.grey.shade300,style:BorderStyle.solid)),child:Text("Project Contract
Signature: ____",style:TextStyle(fontSize:14,height:1.6))),
   SizedBox(height:20), SizedBox(width:double.infinity,child:ElevatedButton(onPressed:()=>Navigator.pushNamed(c,'/home'),style:ElevatedButton.styleFrom(backgroundColor:Colors.black,padding:EdgeInsets.all(16)),child:Text("Download PDF → Home"))),
   SizedBox(height:12), TextButton(onPressed:()=>Navigator.pop(c),child:Text("← Back")),
  ]))));
 }
}
