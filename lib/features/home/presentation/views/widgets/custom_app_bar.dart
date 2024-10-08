import 'package:bookly/core/utils/app_routes.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
<<<<<<< HEAD
      padding: const EdgeInsets.only(top: 30,bottom: 16, right: 8,left: 8),
=======
      padding: const EdgeInsets.only(top: 38,bottom: 16, right: 8,left: 8),
>>>>>>> 8e43518ec692d33542246bcd743c8b00135bba2b
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 40,
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
            ),
            onPressed: () {
              GoRouter.of(context).push(AppRoutes.kSearchView);
            },
          ),
        ],
      ),
    );
  }
}
