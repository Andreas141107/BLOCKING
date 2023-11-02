import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'logic/changenotifier.dart';
import 'pages/myhomepage.dart';

void main(){
  runApp(const MyApp());

}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
      create:(context) => MyAppState(),
      child:MaterialApp(debugShowCheckedModeBanner: false,
      title: 'aplikasi like',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
        home: MyHomePage(),
    ));
  }
}