// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/theme_data.dart';
import 'package:provider/provider.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider4 = Provider.of<MyProvider>(context);
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
          ),
          Image.asset("assets/images/radio.png"),
          SizedBox(
            height: 40,
          ),
         
          
          Text(
            "إذاعه القرآن الكريم",
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Theme.of(context).colorScheme.onPrimary),
          ),
         SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.keyboard_double_arrow_left,
                  color: Theme.of(context).colorScheme.background,
                  
                  ),
                  SizedBox(
            width: 30,
          ),
              Icon(Icons.play_arrow_rounded,
                  color: Theme.of(context).colorScheme.background,size: 60,),
                 SizedBox(
            width: 30,
          ),
              Icon(Icons.keyboard_double_arrow_right,
                  color: Theme.of(context).colorScheme.background),
            ],
          ),
        ],
      ),
    );
  }
}
