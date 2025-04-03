import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ReviewsPage(),
    );
  }
}

class ReviewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avis Clients'),
      ),
      body: ReviewsList(),
    );
  }
}

class ReviewsList extends StatelessWidget {
  final List<Review> reviews = [
    Review(
      name: 'Said Elhwate',
      text: 'cette montagne offre un défi physique considérable, mais les vues panoramiques en valent vraiment la peine.',
      imageUrl: 'https://example.com/image1.jpg',
      verified: true,
    ),
    Review(
      name: 'Hind Saaoudi',
      text: 'J\'ai été agréablement surpris par la qualité de l\'enseignement et les paysages époustouflants. Les pistes étaient bien entretenues et l\'ambiance était conviviale.',
      imageUrl: 'https://example.com/image2.jpg',
      verified: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: reviews.length,
      itemBuilder: (context, index) {
        return ReviewCard(review: reviews[index]);
      },
    );
  }
}

class Review {
  final String name;
  final String text;
  final String imageUrl;
  final bool verified;

  Review({required this.name, required this.text, required this.imageUrl, required this.verified});
}

class ReviewCard extends StatelessWidget {
  final Review review;

  ReviewCard({required this.review});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(review.name, style: TextStyle(fontWeight: FontWeight.bold)),
                if (review.verified) ...[
                  SizedBox(width: 5),
                  Icon(Icons.verified, color: Colors.blue),
                ],
              ],
            ),
            SizedBox(height: 5),
            Text(review.text),
            SizedBox(height: 10),
            Image.network(review.imageUrl),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(icon: Icon(Icons.thumb_up), onPressed: () {}),
                IconButton(icon: Icon(Icons.comment), onPressed: () {}),
                IconButton(icon: Icon(Icons.share), onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}