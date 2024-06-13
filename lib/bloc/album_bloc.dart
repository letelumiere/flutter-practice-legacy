

import 'package:project/model/albums.dart';
import 'package:project/repository/album_repository.dart';
import 'package:rxdart/rxdart.dart';

class AlbumBloc{
  final AlbumRepository _albumRepository = AlbumRepository();
  final PublishSubject<Albums> _albumFetcher = PublishSubject<Albums>();

  Stream<Albums> get allAlbums => _albumFetcher.stream;

  Future<void> fetchAllAlbums() async {
    Albums albums = await _albumRepository.fetchAllAlbums();
    _albumFetcher.add(albums);
  }

  dispose(){
    _albumFetcher.close();
  }

}