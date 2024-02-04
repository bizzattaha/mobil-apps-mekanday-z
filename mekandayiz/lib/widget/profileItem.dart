

import 'package:flutter/material.dart';

class profileItem extends StatelessWidget {

  final Function()? onTap;
  final String avatar;
  final String name;

  const profileItem({
    super.key, this.onTap, required this.avatar, required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pink,
                ),
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage(avatar),
                    radius: 32,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(name,style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
          ],
        ),
      ),
    );
  }
}