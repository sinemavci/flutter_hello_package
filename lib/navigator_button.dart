library hello;

import 'package:flutter/material.dart';

class NavigatorButton extends StatelessWidget {
  final Route pushAndRemoveUntilRoute;
  final Route pushReplacementRoute;

  const NavigatorButton({
    required this.pushAndRemoveUntilRoute,
    required this.pushReplacementRoute,
    Key? key,
  }) : super(key: key);

  void pushAndRemoveUntil(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(pushAndRemoveUntilRoute, (route) => false);
  }

  void popUntil(BuildContext context) {
    Navigator.of(context).popUntil((route) => route.isFirst);
  }

  void pushReplacement(BuildContext context) {
    Navigator.of(context).pushReplacement(pushReplacementRoute);
  }

  Widget btnPushAndRemoveUntil(BuildContext context) {
    return TextButton(
      onPressed: () => pushAndRemoveUntil(context),
      child: const Text("Push and Remove Until"),
    );
  }

  Widget btnPopUntil(BuildContext context) {
    return TextButton(
      onPressed: () => popUntil(context),
      child: const Text("Pop Until"),
    );
  }

  Widget btnPushReplacement(BuildContext context) {
    return TextButton(
      onPressed: () => pushReplacement(context),
      child: const Text("push replacement"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        btnPushAndRemoveUntil(context),
        btnPopUntil(context),
        btnPushReplacement(context),
      ],
    );
  }
}
