import 'package:flutter_music_app_credixco/models/music_detail_model.dart';
import 'package:flutter_music_app_credixco/models/music_detail_track_model.dart';
import 'package:flutter_music_app_credixco/models/music_model.dart';
import 'package:flutter_music_app_credixco/resources/music_api_provider.dart';

class Repository {
  final musicApiProvider = MusicApiProvider();

  Future<MusicModel> fetchAllMusic() => musicApiProvider.fetchMusicList();

  Future<MusicDetailModel> fetchMusicDetails(String trackingId) =>
      musicApiProvider.fetchMusicDetail(trackingId);

  Future<MusicDetailTrackModel> fetchMusicTrackDetails(String trackingId) =>
      musicApiProvider.fetchMusicTrackDetail(trackingId);
}
