
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage > {

  final images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDd3EJfkqHKzGCVeZbilbV6gQVT8GYPXSKxg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbZnqDrZ56wopIX1yCrogmRcgydfefW44uug&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjfAjC8_-lf8KEaz5lmP8eR2tP15yAugK5EA&usqp=CAU'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('フィード'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDd3EJfkqHKzGCVeZbilbV6gQVT8GYPXSKxg&usqp=CAU',
                    width: 60,
                    height: 60,
                  ),
                  const Spacer(),
                  const Column(
                    children: [
                      Text('7,041',
                          style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18)
                      ),
                      Text('投稿'),
                    ],
                  ),
                  const SizedBox(width: 16),
                  const Column(
                    children: [
                      Text('4.6億',
                          style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18)
                      ),
                      Text('フォロワー'),
                    ],
                  ),
                  const SizedBox(width: 16),
                  const Column(
                    children: [
                      Text('41',
                          style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18)
                      ),
                      Text('フォロー'),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Instagram', style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16)),
                  Text('#Instragrm', style: TextStyle(color: Colors.blue)),
                  Text('help.Instagram.com', style: TextStyle(color: Colors.blue)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: OutlinedButton(onPressed: () => {},
                          child: Text("フォロー中"),
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),)),)),
                        const SizedBox(width: 4),
                        Expanded(child: OutlinedButton(onPressed: () => {},
                          child: Text("メッセージ"),
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),)),)),
                      ],
                    ),
                  ),
                  const SizedBox(width: 4),
                  OutlinedButton(onPressed: () => {},
                    child: Icon(Icons.arrow_drop_down_outlined),
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),)),)
                ],
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              primary: false,
              crossAxisCount: 3,
              children: images.map((imageUrl) {
                return InstagramPostItem(imageUrl: imageUrl);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class InstagramPostItem extends StatelessWidget {
  const InstagramPostItem({super.key,required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return  Image.network(
        imageUrl,
        fit: BoxFit.cover,
    );
}}
