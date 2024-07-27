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
      padding: const EdgeInsets.only(top: 34,bottom: 16, right: 24),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 32,
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 16,
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
