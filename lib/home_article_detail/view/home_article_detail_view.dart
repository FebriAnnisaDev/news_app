import 'package:flutter/material.dart';
import 'package:news_app/shared/util/const.dart';

class HomeArticleDetailView extends StatelessWidget {
  const HomeArticleDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundImage(),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5.0,
                  ),
                  const BackButton(),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15.0),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Wrap(
                              spacing: 8.0,
                              runSpacing: 4.0,
                              children: [
                                Chip(
                                  label: const Text('Life Management'),
                                  labelStyle: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                  backgroundColor: Colors.grey.shade100,
                                ),
                                Chip(
                                  label: const Text('Minimalism'),
                                  labelStyle: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                  backgroundColor: Colors.grey.shade100,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Minimalism: Things You\nShould Know",
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w500,
                            color: defaultTextColor,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: defaultTextColor,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "Writer's Name",
                              style: TextStyle(
                                color: defaultTextColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        SizedBox(
                          height: 40,
                          child: Text(
                            "Minimalism is how I reduce distractions in my life so I can do more",
                            style: TextStyle(
                              color: defaultTextColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        SizedBox(
                          height: 120,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut venenatis dui magna, quis pharetra lacus ultricies vel. Integer ornare viverra diam, a tincidunt diam aliquam ac. In vestibulum nulla iaculis nibh ultricies rutrum. Nam sed nisi elementum, venenatis ante sed, varius tortor.",
                            style: TextStyle(
                              height: 1.4,
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        const Text(
                          "This is my favorite quote:",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        SizedBox(
                          height: 50,
                          child: Row(
                            children: [
                              VerticalDivider(
                                thickness: 3,
                                color: defaultTextColor,
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              SizedBox(
                                height: 60,
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut venenatis dui magna, quis pharetra lacus ultricies vel.",
                                  style: TextStyle(
                                    color: defaultTextColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: defaultPadding,
      ),
      child: const Chip(
        elevation: 1,
        label: Icon(
          Icons.arrow_back_sharp,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.6,
      child: Image.network(
        "https://i.ibb.co/YLgTyHY/assortment-natural-material-stationery.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
