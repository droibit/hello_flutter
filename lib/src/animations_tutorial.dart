import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => _AnimatedLogo(animation: animation);

//  @override
//  Widget build(BuildContext context) => _GrowTransition(
//        child: _LogoWidget(),
//        animation: animation,
//      );

}

class _AnimatedLogo extends AnimatedWidget {

  static final _opacityTween = Tween<double>(begin: 0.1, end: 1.0);
  static final _sizeTween = Tween<double>(begin: 0, end: 300);

  _AnimatedLogo({
    Key key,
    @required Animation<double> animation,
  }) : super(
          key: key,
          listenable: animation,
        );

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return Center(
      child: Opacity(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: _sizeTween.evaluate(animation),
          width: _sizeTween.evaluate(animation),
          child: FlutterLogo(),
        ),
        opacity: _opacityTween.evaluate(animation),
      ),
    );
  }
}

class _LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: FlutterLogo(),
      );
}

class _GrowTransition extends StatelessWidget {
  final Widget child;
  final Animation<double> animation;

  _GrowTransition({
    this.child,
    this.animation,
  });

  @override
  Widget build(BuildContext context) => Center(
        child: AnimatedBuilder(
          animation: animation,
          builder: (context, child) => Container(
                height: animation.value,
                width: animation.value,
                child: child,
              ),
          child: child,
        ),
      );
}
