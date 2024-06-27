import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider_project/model/album.dart';
import 'package:http/http.dart' as http;

class AlbumProvider with ChangeNotifier{
  final List<Album> _albumlist = List.empty(growable: true);

  List<Album> getAlbumList(){
    _fetchAlbums();
    return _albumlist;
  }

  void _fetchAlbums() async {
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/albums"));

    final List<Album> result = jsonDecode(response.body)
      .map<Album>((json) => Album.fromJson(json))
      .toList();
    _albumlist.clear();
    _albumlist.addAll(result);
    notifyListeners();
  }
}