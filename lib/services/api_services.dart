

import 'dart:convert';
import 'dart:developer';

import 'package:dailyflix/common/utils.dart';
import 'package:dailyflix/models/upcoming_model.dart';
import 'package:http/http.dart' as http;

const baseUrl = "https://api.themoviedb.org/3/";
var key = "?api_key=$apiKey";
late String endPoint;

class ApiServices {
  Future<UpcomingMovie> getUpcomingMovies() async {
    endPoint = "movie/upcoming";
    final url = "$baseUrl$endPoint?api_key=$apiKey";
    final response = await http.get(Uri.parse(url));

    if(response.statusCode == 200) {
      print("Success");
      return UpcomingMovie.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }
}
