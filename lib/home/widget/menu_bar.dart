import 'package:flutter/material.dart';

import '../../shared/util/const.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: defaultPadding, right: defaultPadding),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 45,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(30),
        ),
        child: SizedBox(
          height: 45,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Chip(
                elevation: 1,
                label: const Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text('Feeds'),
                ),
                labelStyle: TextStyle(color: defaultTextColor),
                backgroundColor: Colors.white,
              ),
              Chip(
                label: const Text('Popular'),
                labelStyle: TextStyle(color: defaultTextColor),
                backgroundColor: Colors.grey.shade200,
              ),
              Chip(
                label: const Text('Following'),
                labelStyle: TextStyle(color: defaultTextColor),
                backgroundColor: Colors.grey.shade200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
