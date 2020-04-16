import 'dart:async';
import 'package:flutter/material.dart';
import 'package:safehome/src/common/styles/common.styles.dart';

class TickerWidget extends StatefulWidget {
  @override
  _TicketWidgetState createState() => _TicketWidgetState();
}

class _TicketWidgetState extends State<TickerWidget> {
  String displayTime = '00:00:00';
  var swatch = Stopwatch();
  final dur = const Duration(seconds: 1);

  void starttimer() {
    Timer(dur, keeprunning);
  }

  void keeprunning() {
    if (swatch.isRunning) {
      starttimer();
    }
    setState(() {
      displayTime = swatch.elapsed.inHours.toString().padLeft(2, '0') +
          ':' +
          (swatch.elapsed.inMinutes % 60).toString().padLeft(2, '0') +
          ':' +
          (swatch.elapsed.inSeconds % 60).toString().padLeft(2, '0');
    });
  }

  @override
  void initState() {
    super.initState();
    swatch.start();
    starttimer();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        displayTime,
        style: TextStyle(
          fontSize: time_font_size,
          fontWeight: FontWeight.w700,
          color: Colors.red,
        ),
      ),
    );
  }
}
