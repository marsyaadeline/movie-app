import 'package:flutter/material.dart';
import 'package:movieapp/screens/home_screen.dart';  // Pastikan HomeScreen di-import

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  WelcomeViewState createState() => WelcomeViewState();
}

class WelcomeViewState extends State<WelcomeView> {
  final List<String> levels = ["male", "female"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black, // Warna latar belakang
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Menambahkan ikon film di bagian atas
            Container(
              margin: const EdgeInsets.only(top: 50, bottom: 20),
              child: const Icon(
                Icons.movie, // Ganti dengan ikon film sesuai kebutuhan
                size: 100,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 50),
              child: const Text(
                "WELCOME TO CINEMA'S",
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "About Cinema's",
                      style: TextStyle(
                        fontSize: 32,
                        color: Color.fromARGB(255, 150, 147, 140),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "We want to know your gender, follow the next steps\n to complete the information.",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white60,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      height: 226,
                      width: double.infinity,
                      color: const Color.fromARGB(21, 244, 67, 54),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: levels.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              height: 226,
                              width: 195,
                              decoration: BoxDecoration(
                                color: const Color(0xFF232441),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "I am",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                      ),
                                    ),
                                    Text(
                                      levels[index],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 50,
                                      ),
                                    ),
                                    const Text(
                                      "Welcome, Let's Enjoy the Movie's",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 133, 119, 119),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Skip Intro",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()),
                      );
                    },
                    child: Container(
                      width: 139,
                      height: 39,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 39, 115, 67),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: const Center(
                        child: Text(
                          "Next",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
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
