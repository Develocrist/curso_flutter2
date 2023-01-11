import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mvviesapp/models/models.dart';
import 'package:mvviesapp/models/now_playing_response.dart';

class MovieProvider extends ChangeNotifier {
  String _baseUrl = 'api.themoviedb.org';
  String _apiKey = '7cc2312396130630276944407b4de2de';
  String _language = 'es-ES';

  List<Movie?>? onDisplayMovies = [];

  MoviesProvider() {
    print('MoviesProvider inicializado');

    this.getOnDisplayMovies();
  }
//en esta seccion se mapea la peticion http en base a lo que necesitamos

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing',
        {'api_key': _apiKey, 'language': _language, 'page': '1'});

    final response = await http.get(url);
    final nowPlayingResponse = NowPlayingResponse.fromJson(response.body);

    //print(nowPlayingResponse.results![1]?.title);

    onDisplayMovies = nowPlayingResponse.results;
    notifyListeners();
  }
}
