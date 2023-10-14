// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../butto_nsheet/button_language_sheet.dart';
import '../butto_nsheet/button_theme_sheet.dart';
import '../theme_data.dart';


class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
          AppLocalizations.of(context)!.language,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Theme.of(context).colorScheme.onPrimary),
          ),
          InkWell(
            onTap: () {
              showlanguagebuttonsheet(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              margin: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: MyThemeData.primarycolor),
              ),
              child: Text(
               pro.local=="en"?AppLocalizations.of(context)!.english:AppLocalizations.of(context)!.arabic,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            "Mode",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Theme.of(context).colorScheme.onPrimary),
          ),
          InkWell(
            onTap: () {
              showthemingbuttonsheet();
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              margin: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: MyThemeData.primarycolor),
              ),
              child: Text(
               pro.theme==ThemeMode.light? AppLocalizations.of(context)!.light:AppLocalizations.of(context)!.dark,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color:Theme.of(context).colorScheme.onPrimary),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showlanguagebuttonsheet(BuildContext context) {
    showModalBottomSheet(
       
        shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18), topRight: Radius.circular(18)),
        ),
        context: context,
        builder: (context) {
          return ButtonLanguageSheet();
        });
  }

  void showthemingbuttonsheet() {
    showModalBottomSheet(
      
        shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18), topRight: Radius.circular(18)),
        ),
        context: context,
        builder: (context) {
          return ButtonthemeSheet();
        });
  }
}
