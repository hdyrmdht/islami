import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:islami/sura_model.dart';
import 'package:islami/theme_data.dart';
import 'package:provider/provider.dart';

import 'providers/my_provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "suradetails";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    var provid = Provider.of<MyProvider>(context);
    if (verses.isEmpty) {
      LoadFile(args.index);
    }

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(provid.theme == ThemeMode.light
                ? "assets/images/background.png"
                : "assets/images/darkbg.png"),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              args.name,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(12),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                  side: BorderSide(color: MyThemeData.primarycolor)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    thickness: 1,
                    indent: 40,
                    endIndent: 40,
                    color: MyThemeData.primarycolor,
                  ),
                  itemBuilder: ((context, index) {
                    return Center(
                        child: Text(
                      verses[index],
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall,
                    ));
                  }),
                  itemCount: verses.length,
                ),
              ),
            ),
          )),
    );
  }

  LoadFile(int index) async {
    String file = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = file.split("\n");
    verses = lines;
    setState(() {});
  }
}
