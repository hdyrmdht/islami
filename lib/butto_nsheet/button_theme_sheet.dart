// ignore_for_file: unnecessary_import, implementation_imports, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:islami/theme_data.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class ButtonthemeSheet extends StatelessWidget {
  const ButtonthemeSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Column(
      children: [
        InkWell(
          onTap: () {
            provider.changetheme(ThemeMode.light);
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Light",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: provider.theme == ThemeMode.light
                        ? Theme.of(context).colorScheme.background
                        : Theme.of(context).colorScheme.onPrimary),
              ),
              provider.local == "en"
                  ? Icon(
                      Icons.done,
                      color: MyThemeData.primarycolor,
                      size: 30,
                    )
                  : SizedBox.shrink(),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            provider.changetheme(ThemeMode.dark);
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Dark",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: provider.theme == ThemeMode.dark
                        ? Theme.of(context).colorScheme.background
                        : Theme.of(context).colorScheme.onPrimary),
              ),
              provider.local == "ar"
                  ? Icon(
                      Icons.done,
                      color:Theme.of(context).colorScheme.background,
                      size: 30,
                    )
                  : SizedBox.shrink(),
            ],
          ),
        )
      ],
    );
  }
}
