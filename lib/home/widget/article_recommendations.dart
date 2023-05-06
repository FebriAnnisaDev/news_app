import 'package:flutter/material.dart';

import '../../shared/util/const.dart';

class ArticleRecommendations extends StatelessWidget {
  const ArticleRecommendations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Just For You",
                style: TextStyle(
                  fontSize: 15.0,
                  color: defaultTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              const Text(
                "See More",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                top: 5.0,
                                bottom: 5.0,
                                left: 10.0,
                                right: 10.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[200],
                              ),
                              child: const Text(
                                "Technology",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Elon Musk on How To Learn\nand Adapth More Faster",
                              style: TextStyle(
                                fontSize: 14.0,
                                color: defaultTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            Row(
                              children: [
                                const CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.green,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "Writer's Name Here",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color: defaultTextColor,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "●",
                                  style: TextStyle(
                                    fontSize: 6.0,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "2 minutes ago",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        Center(
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                "https://i.ibb.co/s3dSvKs/gray-chair-living-room-with-copy-space.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 30,
                      thickness: 0.6,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
