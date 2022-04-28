library hello;

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Route route;

  const CustomButton({
    required this.route,
    Key? key,
  }) : super(key: key);

  void pushAndRemoveUntil(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(route, (route) => false);
  }

  Widget btnPushAndRemoveUntil(BuildContext context) {
    return TextButton(
      onPressed: () => pushAndRemoveUntil(context),
      child: const Text("Push and Remove Until"),
    );
  }

  Widget btnPopUntil(BuildContext context) {
    return TextButton(
      onPressed: () => pushAndRemoveUntil(context),
      child: const Text("Pop Until"),
    );
  }

  Widget btnPushReplacement(BuildContext context) {
    return TextButton(
      onPressed: () => pushAndRemoveUntil(context),
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
