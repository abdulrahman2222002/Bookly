
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key,  this.errorMessage});
  final String? errorMessage;
  @override
  Widget build(BuildContext context) {
    return Text(errorMessage!,style: Style.textStyle16,);
  }
}
