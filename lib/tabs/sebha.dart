import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:islami/theme_data.dart';


class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count = 0;
  int index=0;
  List<String> tasbehaname = [
    "الله اكبر",
    "الـحمد الله ",
    "سبحان الله ",
    "لا إلــه إلا الله ",
    "  اسـتـغفر الله"
  ];
  @override
  Widget build(BuildContext context) {


    return 
         Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: SingleChildScrollView(
                  child: Column(children: [
                              Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 38),
                      child: Image.asset("assets/images/head_sebha_dark.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 80.0),
                      child: Image.asset("assets/images/body_sebha_dark.png"),
                    ),
                  ],
                              ),
                              SizedBox(
                  height: 45,
                              ),
                              Text(
                  "عدد التسبيحات",
                  style:Theme.of(context).textTheme.bodyMedium!.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                              ),
                              SizedBox(
                  height: 27,
                              ),
                              Container(
                    decoration: BoxDecoration(
                      color:Color(0xffB7935F),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 67,
                    width: 58,
                    child: Center(
                      child: Text(
                        "${count}",
                        style:Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,color: MyThemeData.blackcolor)
                      ),
                    )),
                              SizedBox(
                  height: 25,
                              ),
                              InkWell(
                  onTap: () {
                    if
                    (count<30) {
                      count++;
                    }else{
                      count=0;
                      if(index < tasbehaname.length-1){
                        index++;
                      }else{
                        index=0;
                      }
                    }
                    setState(() {});
                  },
                  child:Container(
                      decoration: BoxDecoration(
                        color: MyThemeData.primarycolor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 52,
                      width: 130,
                      child: Center(
                        child: Text(
                         tasbehaname [index],
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.white),
                        ),
                      )),
                              ),
                            ]),
                )));
       
  }}