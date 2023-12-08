
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

final images = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDd3EJfkqHKzGCVeZbilbV6gQVT8GYPXSKxg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbZnqDrZ56wopIX1yCrogmRcgydfefW44uug&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjfAjC8_-lf8KEaz5lmP8eR2tP15yAugK5EA&usqp=CAU'
];

class _FeedPageState extends State<FeedPage> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text('INSTAGRAM', style: TextStyle(fontSize: 10),),
            Text('投稿'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDd3EJfkqHKzGCVeZbilbV6gQVT8GYPXSKxg&usqp=CAU',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(width: 5),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Instagram'),
                            SizedBox(width: 3),
                            Icon(Icons.check_circle_rounded, size: 13,
                                color: Colors.blue),
                          ],
                        ),
                        Text('サンティエゴ', style: TextStyle(fontSize: 10),)
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.more_horiz),
                ],
              ),
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 400,
                initialPage: 0,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) =>
                    setState(() {
                      _currentIndex = index;
                    }),
              ),
              itemCount: images.length,
              itemBuilder: (context, index, realIndex) {
                final imageUrl = images[index];
                return buildImage(imageUrl);
              },),
             Padding(padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          const Positioned(
                            left: 10,
                            child: Icon(Icons.favorite_border),
                          ),
                          const Positioned(
                            left: 40.0,
                            child: Icon(Icons.messenger_outline),
                          ),
                          const Positioned(
                            left: 80.0,
                            child: Icon(Icons.send),
                          ),
                          const Positioned(
                              right: 10.0,
                              child: Icon(Icons.archive_outlined)
                          ),
                          buildIndicator(),
                        ],
                      ),
                    ),
                  ],
                )
            ),
            const Padding(padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Text(
                      "いいね! 「70.4899件」",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 10)
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.all(8),
              child: Wrap(
                children: [
                  Text(
                    "ねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこねこ",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget buildImage(imageUrl) =>
      Image.network(
        imageUrl,
        fit: BoxFit.cover,
      );

  Widget buildIndicator() =>
      SizedBox(
        height: 20,
        child: AnimatedSmoothIndicator(
          activeIndex: _currentIndex,
          count: images.length,
          effect: const JumpingDotEffect(
              dotHeight: 5,
              dotWidth: 5,
              spacing: 5.0,
              activeDotColor: Colors.blue,
              dotColor: Colors.grey),
        ),
      );

}