import 'package:flutter/material.dart';
import 'package:movieapp/welcome_view.dart'; // Import halaman WelcomeView
//import 'package:movieapp/screens/home_screen.dart';
import '../Model/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const WelcomeView(), // Set halaman awal ke WelcomeView
    );
  }
}

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            "https://image.tmdb.org/t/p/original/${movie.backDropPath}",
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          Text(
            movie.title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Tambahkan detail lain seperti sinopsis, tanggal rilis, dll.
          const SizedBox(height: 10),
          // Contoh teks deskripsi
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Sinopsis atau informasi lainnya akan ditampilkan di sini.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
