import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/x_close_button.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
<<<<<<< HEAD
      padding: const EdgeInsets.only(top: 4, right: 8,left: 8),
=======
      padding: const EdgeInsets.only(top: 8,bottom: 16, right: 8,left: 8),
>>>>>>> 8e43518ec692d33542246bcd743c8b00135bba2b
      child: Row(
        children: [
          const XCloseButton(),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
    );
  }
}


