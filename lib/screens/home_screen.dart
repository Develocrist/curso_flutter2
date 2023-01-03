import 'package:flutter/material.dart';
import 'package:mvviesapp/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            children: const [
              //tarjeta de arriba
              CardSwiper(),

              //tarjetas de abajo
              MovieSlider(),
            ],
          ),
        ));
  }
}
