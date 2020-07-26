import 'package:flutter_music_app_credixco/models/music_model.dart';
import 'package:flutter_music_app_credixco/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class MusicBloc {
  final _repository = Repository();
  final _musicFetcher = PublishSubject<MusicModel>();

  Stream<MusicModel> get allMusic => _musicFetcher.stream;

  fetchAllMusic() async {
    MusicModel musicModel = await _repository.fetchAllMusic();
    _musicFetcher.sink.add(musicModel);
  }

  dispose() {
    _musicFetcher.close();
  }
}

final bloc = MusicBloc();
