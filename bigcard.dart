import 'package:english_words/english_word.dart';
import 'package:flutter/material.dart';


class BigCard extends StatelessWidget{
  const BigCard({
    super.key,
    required this.pair,
  });
  
  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
      color:theme.colorScheme.onPrimary,fontStyle: FontStyle.italic,
    );
    return Card(
      color:theme.colorScheme.primary,
      child:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(pair.first + pair.second,
        style: style,
    ),
      ),
    );
  }
}