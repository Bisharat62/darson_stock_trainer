import 'package:darson_stock_trainer/widgets/spacer.dart';
import 'package:flutter/material.dart';

Widget homecard(dynamic data, context) {
  TextStyle text1 = const TextStyle(
      color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold);
  return Padding(
    padding: const EdgeInsets.only(bottom: 15),
    child: Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
              colors: [Color(0xff7C7C7C), Color(0xff3C3C3C)],
              end: Alignment(0, -1),
              begin: Alignment(0, -0.3))),
      child: Row(
        children: [
          Text(
            data.title.toString(),
            style: text1,
          ),
          horizental(20),
          Text(
            data.subtitle.toString(),
            style: text1,
          ),
          Spacer(),
          (data.value.toString().contains('-'))
              ? Image.asset('assets/images/icons/arrow_down.png')
              : Image.asset('assets/images/icons/arrow_up.png'),
          SizedBox(
            width: 100,
            child: Center(
              child: Text(
                data.value.toString(),
                style: text1,
              ),
            ),
          ),
          Icon(
            Icons.close_sharp,
            color: Colors.red,
          )
        ],
      ),
    ),
  );
}
