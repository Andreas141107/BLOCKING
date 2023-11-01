import 'package:codelab1_flutter/pages/favorite_page.dart';
import 'package:codelab1_flutter/pages/generator_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState()=> _MyhomePageState();
}

class _MyhomePageState extends State<MyHomePage>{
  var selectedIndex= 0;

  @override

  Widget build(BuildContext context){
    Widget page;
    switch(selectedIndex){
      case 0:
        page= GeneratorPage();
      break;
      case 1:
        page= FavoritePage();
        break;
        default:
        throw UnimplementedError('no widget for $selectedIndex');
    }
    return LayoutBuilder(builder: (context,constraints){
      return Scaffold(
        body: Row(
          children: [
            SafeArea(
              child: NavigationRail(
                extended:constraints.maxWidth>=600,
                destinations: [
                  NavigationRailDestination(
                    icon: Icon(Icon.home), label: Text('Home') ),
                    NavigationRailDestination(icon: Icon(Icons.favorite), label:Text('favorites'))
                ],
                selectedIndex: selectedIndex,
                onDestinationSelected: (val){
                  print('selected: $val');
                  setState(() {
                    selectedIndex=val;
                  });
                },
                )),
                Expanded(
                      child: Container(
                        color: Theme.of(context).colorScheme.primaryContainer,
                child: page,
                ))
          ],
        ),
      );
    });_
  }
}