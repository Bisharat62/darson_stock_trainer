import 'package:flutter/material.dart';

Widget tableheadmbp(List list, context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 45,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        gradient: const LinearGradient(
            colors: [Color(0xff7C7C7C), Color(0xff3C3C3C)],
            end: Alignment(0, -1),
            begin: Alignment(0, -0.3))),
    child: Center(
      child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(children: [
            tablecellmbp(list[0], Color(0xffFBCB2E)),
            tablecellmbp(list[1], Color(0xffFBCB2E)),
            tablecellmbp(list[2], Color(0xffFBCB2E)),
            tablecellmbp(list[2], Color(0xffFBCB2E)),
            tablecellmbp(list[1], Color(0xffFBCB2E)),
            tablecellmbp(list[0], Color(0xffFBCB2E), last: true),
          ]),
        ],
      ),
    ),
  );
}

List<Color> dark = [Color(0xff87C2E9), Color(0xffEBD297)];
List<Color> light = [Color(0xff9AC7E5), Color(0xffEED9A9)];

Widget tablebodymbp(dynamic list, List<Color> color, int index, context) {
  final Color first = color[0];
  final Color last = color[1];
  final List<Color> gradient = [
    last,
    last,
    first,
    first,
  ];
  return Padding(
    padding: EdgeInsets.only(top: (index == 8) ? 5 : 0),
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: 30,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: gradient,
        stops: [0.0, 0.5, 0.5, 1.0],
        end: Alignment.centerLeft,
        begin: Alignment.centerRight,
      )),
      child: Center(
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(children: [
              tablecellmbp(
                  list.order1, (index >= 8) ? Colors.red : Colors.black),
              tablecellmbp(list.volume1, Colors.black),
              tablecellmbp(list.price1, Colors.black),
              tablecellmbp(list.price2, Colors.black),
              tablecellmbp(list.volume2, Colors.black),
              tablecellmbp(
                  list.order2, (index >= 8) ? Colors.green : Colors.black,
                  last: true),
            ]),
          ],
        ),
      ),
    ),
  );
}

Widget tablecellmbp(String text, Color color, {bool? last}) {
  return Container(
      height: (color == Color(0xffFBCB2E)) ? 45 : 30,
      decoration: BoxDecoration(
          border: Border(
              right: BorderSide(
                  color: Colors.white, width: (last == true) ? 0 : 1))),
      child: Center(
          child: Text(text,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12.0, color: color))));
}
