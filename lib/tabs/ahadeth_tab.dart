// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:islami/hadeth_model.dart';
import 'package:islami/main.dart';
import 'package:islami/tabs/settings_tab.dart';
import 'package:islami/theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../ahadeth_details.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<String> hadethName = [];

  List<HadethModel> allahadeth = [];

  @override
  Widget build(BuildContext context) {
    LoadAhadeth();
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/ahadeth_image.png"),
          Divider(
            thickness: 2,
            color: MyThemeData.primarycolor,
          ),
          Text(
        AppLocalizations.of(context)!.ahadethname,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color:Theme.of(context).colorScheme.onPrimary),
          ),
          Divider(
            thickness: 2,
            color: MyThemeData.primarycolor,
          ),
          Expanded(
            child: ListView.separated(
                separatorBuilder: (
                  context, index) => Divider(
                      thickness: 2,
                      color: Theme.of(context).colorScheme.onPrimary,
                      indent: 40,
                      endIndent: 40,
                    ),
                itemCount: allahadeth.length,
                itemBuilder: ((context, index) {
                  return InkWell(
                      onTap: () {
                      Navigator.pushNamed(
                        context,
                        Ahadethdetails.routeName,
                        arguments:   allahadeth[index],
                      );
                    },
                      child: Text(
                    allahadeth[index].title,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                    
                    textAlign: TextAlign.center,
                  ));
                })),
          )
        ],
      ),
    );
  }

  LoadAhadeth() async {
    rootBundle.loadString("assets/files/ahadeth.txt").then((ahadeth) {
      List<String> ahadthlist = ahadeth.split("#");
      for (int i = 0; i < ahadthlist.length; i++) {
        String hadethone = ahadthlist[i];
        List<String> ahadethonelines = hadethone.trim().split("\n");
        String title = ahadethonelines[0];
        ahadethonelines.removeAt(0);
        List<String> content = ahadethonelines;
        // ignore: unused_local_variable
        HadethModel hadethModel = HadethModel(title, content);
        allahadeth.add(hadethModel);
      }
      setState(() {});
    }).catchError((e) {
      print(e.toString());
    });
  }
}
