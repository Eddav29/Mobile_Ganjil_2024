import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class RedTextWidget extends StatelessWidget {
  
  
  //langkah 5 membuat variabel text
  final String text ;
  const RedTextWidget({Key? key, required this.text}) : super(key: key);
  // ignore: use_super_parameters
  //langkah 3 membuat 
  // Widget build(BuildContext context) {
  //   return Container();
  // }
  
  //langkah 4 rambah return widget autosize
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: const TextStyle(
        color: Colors.red,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}