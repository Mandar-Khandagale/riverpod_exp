import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

///custom hook but not proper way

// ScrollController useScrollControllerHook (AnimationController animationController){
//   ScrollController scrollController = ScrollController();
//
//   scrollController.addListener(() {
//     switch(scrollController.position.userScrollDirection) {
//       case ScrollDirection.forward:
//         animationController.forward();
//         break;
//       case ScrollDirection.reverse:
//         animationController.reverse();
//         break;
//       case ScrollDirection.idle:
//         break;
//     }
//   });
//
//   return scrollController;
//
// }

ScrollController useScrollControllerHook(
    AnimationController animationController) {
  return use(_ScrollControllerHook(animationController: animationController));
}

class _ScrollControllerHook extends Hook<ScrollController> {
  final AnimationController animationController;

  const _ScrollControllerHook({required this.animationController});

  @override
  _ScrollControllerHookState createState() => _ScrollControllerHookState();
}

class _ScrollControllerHookState
    extends HookState<ScrollController, _ScrollControllerHook> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initHook() {
    _scrollController.addListener(() {
      switch (_scrollController.position.userScrollDirection) {
        case ScrollDirection.forward:
          hook.animationController.forward();
          break;
        case ScrollDirection.reverse:
          hook.animationController.reverse();
          break;
        case ScrollDirection.idle:
          break;
      }
    });
    super.initHook();
  }

  @override
  ScrollController build(BuildContext context) {
    return _scrollController;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
