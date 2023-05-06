import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_app/profile/view/profile_view.dart';

import '../../shared/util/const.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: Row(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: defaultTextColor,
                  ),
                  const SizedBox(
                    width: 7.0,
                  ),
                  Text(
                    "Bulletin News",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: defaultTextColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              Get.to(() => const ProfileView());
            },
            child: SizedBox(
              height: 40,
              child: Stack(
                children: const [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage(
                        "https://i.ibb.co/c3NbqbZ/enchanting-asian-woman-sniffing-white-flowers-studio-shot-chinese-woman-with-eustomas-isolated-beige.jpg"),
                  ),
                  Positioned(
                    left: 16,
                    top: 20,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 7,
                    ),
                  ),
                  Positioned(
                    left: 18,
                    top: 22,
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
        ],
      ),
    );
  }
}
