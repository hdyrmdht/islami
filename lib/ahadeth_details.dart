import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:islami/hadeth_model.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/theme_data.dart';
import 'package:provider/provider.dart';

class Ahadethdetails extends StatelessWidget {
  static const String routeName="ahadethdetail";
  const Ahadethdetails({super.key});

  @override
  Widget build(BuildContext context) {
     var provider = Provider.of<MyProvider>(context);
       var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(provider.theme == ThemeMode.light
                ? "assets/images/background.png"
                : "assets/images/darkbg.png"),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              args.title,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).colorScheme.secondary),
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
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
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
                    args.content[index],
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall,
                      ));
                    }),
                    itemCount:  args.content.length,
                  ),
                ),
              ),
            ),
          )),
    );
  }
}