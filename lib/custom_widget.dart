import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  String label;
  String value;

  CustomWidget({required this.label, required this.value});

  var boxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    border: Border.all(
        color: const Color(0xFF616161), width: 1.0, style: BorderStyle.solid),
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFEEEEEE),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
            color: const Color(0xFF616161),
            width: 1.0,
            style: BorderStyle.solid),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.all(4),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 60,
              alignment: Alignment.center,
              decoration: boxDecoration,
              child: Text(
                label,
                style: const TextStyle(
                    fontSize: 25,
                    fontFamily: 'Amiri-Regular',
                    color: Color(0xFF616161)),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 1,
            child: Container(
              height: 60,
              alignment: Alignment.center,
              decoration: boxDecoration,
              child: Text(
                value,
                style: const TextStyle(
                    fontSize: 25,
                    fontFamily: 'Amiri-Regular',
                    color: Color(0xFF616161)),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
