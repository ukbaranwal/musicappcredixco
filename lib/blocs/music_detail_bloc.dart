import 'package:flutter_music_app_credixco/models/music_detail_model.dart';
import 'package:flutter_music_app_credixco/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class MusicDetailBloc {
  final _repository = Repository();
  var _musicFetcher = PublishSubject<MusicDetailModel>();
  bool _isDisposed = false;
  Stream<MusicDetailModel> get allMusic => _musicFetcher.stream;

  fetchMusicDetail(String trackingId) async {
    if (_isDisposed) {
      _musicFetcher = PublishSubject<MusicDetailModel>();
    }
    MusicDetailModel musicDetailModel =
        await _repository.fetchMusicDetails(trackingId);
    _musicFetcher.sink.add(musicDetailModel);
  }

  dispose() {
    _musicFetcher.close();
    _isDisposed = true;
  }
}

final detailBloc = MusicDetailBloc();
