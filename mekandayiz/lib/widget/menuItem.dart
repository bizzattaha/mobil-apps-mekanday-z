
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {

  final Function()? onTap;
  final String title;
  final Icon icon;

  const MenuItem({
    super.key,required this.title, required this.icon, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            icon,
            const SizedBox(width: 6,),
            Text(title, style: const TextStyle(color: Color.fromARGB(255, 98, 98, 98)),),
          ],
        ),
      ),
    );
  }
}