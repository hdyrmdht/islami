// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:islami/tabs/ahadeth_tab.dart';
import 'package:islami/tabs/quran_tab.dart';
import 'package:islami/tabs/radio_tab.dart';
import 'package:islami/tabs/sebha.dart';
import 'package:islami/tabs/settings_tab.dart';
import 'package:islami/theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'providers/my_provider.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var pro2=Provider.of<MyProvider>(context);   
    return Stack(
      children: [
        Image.asset( 
        pro2.theme==ThemeMode.light?"assets/images/background.png":"assets/images/darkbg.png",
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            // ignore: prefer_const_constructors
            title: Text("Islami", style: Theme.of(context).textTheme.bodyLarge),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap: ((value) {
                index = value;
                setState(() {});
              }),
              backgroundColor: MyThemeData.primarycolor,
              items: [
                BottomNavigationBarItem(
                  icon:ImageIcon(AssetImage("assets/images/quran.png")),
                  label:  AppLocalizations.of(context)!.quran,
                  backgroundColor:Theme.of(context).colorScheme.primary,
                ),
                BottomNavigationBarItem(
              icon:ImageIcon(AssetImage("assets/images/ahadeth.png")),
                    label: AppLocalizations.of(context)!.ahadethname,
                    backgroundColor:Theme.of(context).colorScheme.primary),
                     BottomNavigationBarItem(
                     icon:ImageIcon(AssetImage("assets/images/sebha.png")),
                    label:AppLocalizations.of(context)!.sebha,
                    backgroundColor: Theme.of(context).colorScheme.primary),
                     BottomNavigationBarItem(
                   icon:ImageIcon(AssetImage("assets/images/radio.png")),
                    label: AppLocalizations.of(context)!.radio,
                    backgroundColor: Theme.of(context).colorScheme.primary),
                     BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settings,
                    backgroundColor:Theme.of(context).colorScheme.primary),
              ]),
              body: tabs[index],

        ),
      ],
    );
  }
  List<Widget>tabs=[
     QuranTab(),
    AhadethTab(),
      SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];
}
