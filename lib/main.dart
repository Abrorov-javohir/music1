import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Music app'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHT6VkwFRxk7pUjCYCyfcGRrEOA_hHA30GaTey9t1F0Q&s",
                    width: 300,
                    height: 200,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              'Podcast',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Text(
              'Listen yuor favourite Podcast \nAnywhere,Anytime',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(60),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Sing up",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Popular Show',
          textAlign: TextAlign.center,
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String choice) {
              switch (choice) {
                case "Settings":
                  break;
                case "Subscribe":
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Subscribe()),
                  );
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'Settings',
                  child: Text('Settings'),
                ),
                const PopupMenuItem<String>(
                  value: 'Subscribe',
                  child: Text('Subscribe'),
                ),
              ];
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/image.png"),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Play All shows",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Subscribe()),
                      );
                    },
                    child: const Text(
                      "Subscibe",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("12 Popular Show"),
                Text("See all"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/image.png",
                  width: 60,
                  height: 60,
                ),
                const SizedBox(width: 10),
                const Text(
                  "Enjoy\n Socially Buzzed",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(width: 10),
                const Icon(Icons.play_circle_outline),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  "https://images-na.ssl-images-amazon.com/images/I/81C0caWDQUL.png",
                  width: 60,
                  height: 60,
                ),
                const SizedBox(width: 10),
                const Text(
                  "Dance Monkey\n Tones and I",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(width: 10),
                const Icon(Icons.play_circle_outline),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  "https://images.genius.com/c3db3f1704dc9c4d4630d11f426b038e.1000x1000x1.jpg",
                  width: 60,
                  height: 60,
                ),
                const SizedBox(width: 10),
                const Text(
                  "Thunder\n Imagine Dragon",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(width: 10),
                const Icon(Icons.play_circle_outline),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  "https://i.ytimg.com/vi/iOcE1v1cy2A/maxresdefault.jpg",
                  width: 60,
                  height: 60,
                ),
                const SizedBox(width: 10),
                const Text(
                  "Thunder\n Nightcore",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(width: 10),
                const Icon(Icons.play_circle_outline),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  "https://upload.wikimedia.org/wikipedia/en/thumb/0/0c/The_Kid_Laroi_and_Justin_Bieber_-_Stay.png/220px-The_Kid_Laroi_and_Justin_Bieber_-_Stay.png",
                  width: 60,
                  height: 60,
                ),
                const SizedBox(width: 10),
                const Text(
                  "Stay\n Shane Thompson",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(width: 10),
                const Icon(Icons.play_circle_outline),
              ],
            ),
            BottomAppBar(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: const Icon(Icons.home),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.category),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.queue_music_sharp),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.person),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Subscribe extends StatelessWidget {
  const Subscribe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Subscribe"),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String choice) {
              switch (choice) {
                case "Settings":
                  break;
                case "Subscribe":
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Subscribe()),
                  );
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'Settings',
                  child: Text('Settings'),
                ),
                const PopupMenuItem<String>(
                  value: 'Subscribe',
                  child: Text('Subscribe'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Subscribe Your Favourite Podcast Authores. Or You can Skip It For Now",
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                "https://i.ytimg.com/vi/iOcE1v1cy2A/maxresdefault.jpg",
                width: 60,
                height: 60,
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: Text(
                  "Nightcore\n264 songs",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Subscribe()),
                  );
                },
                child: const Text(
                  "Subscribe",
                  style: TextStyle(color: Colors.purple, fontSize: 20),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                "https://images.genius.com/c3db3f1704dc9c4d4630d11f426b038e.1000x1000x1.jpg",
                width: 60,
                height: 60,
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: Text(
                  "Imagine Dragon\n300 songs",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Subscribe()),
                  );
                },
                child: const Text(
                  "Subscribe",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                "https://i.ytimg.com/vi/gADgM89skZQ/maxresdefault.jpg",
                width: 60,
                height: 60,
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: Text(
                  "Tones and I\n200 songs",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Subscribe()),
                  );
                },
                child: const Text(
                  "Subscribe",
                  style: TextStyle(color: Colors.purple, fontSize: 20),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                "https://i.scdn.co/image/ab6761610000e5eb24b5185226d5b7c6aa91db5a",
                width: 60,
                height: 60,
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: Text(
                  "PSY\n300 songs",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Subscribe()),
                  );
                },
                child: const Text(
                  "Subscribe",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                "https://lh6.googleusercontent.com/proxy/x9njrNZcmcnMavkPS35zMQmGY0gM26gxg-Zzxd2uxgTmTXxQDMn3m615UjqcV2vMgoiCbOYYndqc7UlHme7UK7KkghgA0kaXTEkFj-7KQEm7Z9kheWu_5AatKAEEBLye",
                width: 60,
                height: 60,
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: Text(
                  "Ulug'bek Rahmatullayev\n300 songs",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Subscribe()),
                  );
                },
                child: const Text(
                  "Subscribe",
                  style: TextStyle(color: Colors.purple, fontSize: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
