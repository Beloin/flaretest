import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class TeddyAnimation extends StatefulWidget {
  TeddyAnimation({Key key}) : super(key: key);

  @override
  _TeddyAnimationState createState() => _TeddyAnimationState();
}

class _TeddyAnimationState extends State<TeddyAnimation> {
  String animation = "idle";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 500,
      child: GestureDetector(
        onTap: () {
          animation == "fail" ? animation = "idle" : animation = "fail";
          setState((){});
        },
        child: FlareActor(
          "lib/animation/Teddy.flr",
          fit: BoxFit.contain,
          animation: animation,
        ),
      ),
    );
  }
}
