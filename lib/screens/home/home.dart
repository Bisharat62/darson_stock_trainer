import 'package:darson_stock_trainer/screens/home/home_classmodel/marketnames.dart';
import 'package:darson_stock_trainer/screens/home/home_components/home_appbar.dart';
import 'package:darson_stock_trainer/screens/home/home_components/home_card.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextStyle text1 =
      TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold);
  TextEditingController _search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print(_search.text);
    return Column(
      children: [
        homeappbar(context),
        search(_search, false, context),
        ListView.builder(
          itemCount: market_list.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return homecard(market_list[index], context);
          },
        ),
      ],
    );
  }
}
