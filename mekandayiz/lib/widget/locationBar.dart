import 'package:flutter/material.dart';

class locationBar extends StatelessWidget {

  final Function()? onTap;
  final Icon icon;

  const locationBar({
    super.key,required this.icon, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [ 
          Column(
            children: [
              icon,
            ],
          )
        ],
      ),
    );
  }
}