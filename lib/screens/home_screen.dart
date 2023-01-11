import 'package:flutter/material.dart';
import 'package:mvviesapp/providers/movies_provider.dart';
import 'package:mvviesapp/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MovieProvider>(context);

    print(moviesProvider.onDisplayMovies);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Peliculas en cines'),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.search_off_outlined))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //tarjeta de arriba
              CardSwiper(movies: moviesProvider.onDisplayMovies),

              //tarjetas de abajo
              MovieSlider(),
            ],
          ),
        ));
  }
}
