
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

 int currentIndex  = 0;

class _FeedPageState extends State<FeedPage> {
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
                children:[
                  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDd3EJfkqHKzGCVeZbilbV6gQVT8GYPXSKxg&usqp=CAU',
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
                            Icon(Icons.check_circle_rounded,size: 13,color: Colors.blue),
                          ],
                        ),
                        Text('サンティエゴ',style: TextStyle(fontSize: 10),)
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
                enlargeCenterPage: false,
                onPageChanged: (index, reason) => setState(() {
                  currentIndex = index;
                }),
              ),
              itemCount: images.length,
              itemBuilder: (context, index, realIndex) {
                final imageUrl = images[index];
                return buildImage(imageUrl: imageUrl);
              },),
            const Padding(padding: EdgeInsets.all(8),
              child : Row(
                children: [
                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 10,
                          child: Icon(Icons.favorite_border),
                        ),
                        Positioned(
                          left :40.0,
                          child: Icon(Icons.messenger_outline),
                        ),
                        Positioned(
                          left :80.0,
                          child: Icon(Icons.send),
                        ),
                        Positioned(
                          right :10.0,
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
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10)
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
}

class buildImage extends StatelessWidget {
  const buildImage({super.key,required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return  Image.network(
      imageUrl,
      fit: BoxFit.cover,
    );
  }
}

class buildIndicator extends StatelessWidget {
   const buildIndicator({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: AnimatedSmoothIndicator(
        activeIndex: currentIndex,
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
}