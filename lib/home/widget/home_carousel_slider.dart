import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/home_article_detail/view/home_article_detail_view.dart';
import 'package:news_app/shared/util/const.dart';

class HomeCarouselSlider extends StatelessWidget {
  const HomeCarouselSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: Builder(builder: (context) {
        List images = [
          "https://i.ibb.co/s3dSvKs/gray-chair-living-room-with-copy-space.jpg",
          "https://i.ibb.co/ZGc4dhG/green-sofa-white-living-room-with-free-space.jpg",
          "https://i.ibb.co/khPX98g/minimalist-third.jpg",
        ];

        return CarouselSlider(
          options: CarouselOptions(
            initialPage: 1,
            height: 250.0,
            autoPlay: false,
            enableInfiniteScroll: false,
            enlargeCenterPage: false,
            viewportFraction: 0.95,
          ),
          items: images.map((imageUrl) {
            return Builder(
              builder: (BuildContext context) {
                return InkWell(
                  onTap: () {
                    Get.to(() => const HomeArticleDetailView());
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade700,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          imageUrl,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, bottom: 15.0, left: 15.0),
                              child: Container(
                                padding: const EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8.0),
                                  child: Text(
                                    "Life-style",
                                    style: TextStyle(
                                      color: defaultTextColor,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, bottom: 15.0),
                              child: Container(
                                padding: const EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8.0),
                                  child: Text(
                                    "Trending",
                                    style: TextStyle(
                                      color: defaultTextColor,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Minimalist: Things You\n                  Should Know",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: defaultTextColor),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                      backgroundColor: defaultTextColor,
                                      radius: 8),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    "by matchaforgood",
                                    style: TextStyle(color: defaultTextColor),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }).toList(),
        );
      }),
    );
  }
}
