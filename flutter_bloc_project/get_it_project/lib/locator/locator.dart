import 'package:get_it/get_it.dart';
import '../service/album_service.dart';


GetIt locator = GetIt.instance;

initLocator(){
  locator
    .registerLazySingleton<AlbumService>(() => AlbumServiceImplmentation());
}