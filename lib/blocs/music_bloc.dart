import 'package:flutter_music_app_credixco/models/music_model.dart';
import 'package:flutter_music_app_credixco/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class MusicBloc {
  final _repository = Repository();
  var _musicFetcher = PublishSubject<MusicModel>();
  bool _isDisposed = false;
  Stream<MusicModel> get allMusic => _musicFetcher.stream;

  fetchAllMusic() async {
    if (_isDisposed) {
      _musicFetcher = PublishSubject<MusicModel>();
    }
    MusicModel musicModel = await _repository.fetchAllMusic();
    _musicFetcher.sink.add(musicModel);
  }

  dispose() {
    _musicFetcher.close();
    _isDisposed = true;
  }
}

final bloc = MusicBloc();
