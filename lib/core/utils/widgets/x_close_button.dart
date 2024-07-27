import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class XCloseButton extends StatelessWidget {
  const XCloseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        GoRouter.of(context).pop();
      },
      icon: const Icon(Icons.close),
    );
  }
}