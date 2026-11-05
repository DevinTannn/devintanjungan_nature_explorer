import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nature Explorer',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.greenAccent),
      ),
      home: const HomeScreen(), debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Nature Explorer'
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network('https://picsum.photos/id/10/300/300'),
              Text(
                'A Peaceful Nature Escape',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                'Discover, Explore, Reconnect',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5,),
              Text(
                'Discover the beauty of nature through breathtaking landscapes, peaceful forests, and stunning mountains views. Explorer remarkable destinations, enjoy the fresh air, and reconnect with the natural world. From quiet lakes to scenic trails, every journey offers a new experience. Let nature inspire you next advanture and create unforgettable memories along the way.',
                style: TextStyle(
                  fontSize: 14,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _galleryImage('https://picsum.photos/id/10/150/300'),
                    _galleryImage('https://picsum.photos/id/19/150/300'),
                    _galleryImage('https://picsum.photos/id/37/150/300'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _galleryImage(String url){
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.network(
        url,
      ),
    );
  }
}

