// ignore_for_file: unnecessary_import, implementation_imports, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:islami/theme_data.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../providers/my_provider.dart';

class ButtonLanguageSheet extends StatelessWidget {
  const ButtonLanguageSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Column(
      children: [
        InkWell(
          onTap: () {
            provider.changelanguage("en");
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.english,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: provider.local == "en"
                       ? Theme.of(context).colorScheme.background
                        : Theme.of(context).colorScheme.onPrimary),
              ),
        provider.local == "en"?Icon(
                Icons.done,
                color: MyThemeData.primarycolor,
                size: 30,
              ):  SizedBox.shrink(),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            provider.changelanguage("ar");
                Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
               AppLocalizations.of(context)!.arabic,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: provider.local == "ar"
                     ? Theme.of(context).colorScheme.background
                        : Theme.of(context).colorScheme.onPrimary),
              ),
             provider.local == "ar"?Icon(
                Icons.done,
                color: MyThemeData.primarycolor,
                size: 30,
              ):  SizedBox.shrink(),
            ],
          ),
        )
      ],
    );
  }
}
