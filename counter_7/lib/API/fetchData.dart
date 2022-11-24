import 'dart:convert';
import 'package:counter_7/model/myWatchList.dart';
import 'package:http/http.dart' as http;

Future<List<WatchList>> fetchToDo() async {
  var url = Uri.parse('http://katalog-tugas-2.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  var data = jsonDecode(utf8.decode(response.bodyBytes));

  // melakukan konversi data json menjadi object ToDo
  List<WatchList> listWatch = [];
  for (var d in data) {
    if (d != null) {
      listWatch.add(WatchList.fromJson(d));
    }
  }

  return listWatch;
}