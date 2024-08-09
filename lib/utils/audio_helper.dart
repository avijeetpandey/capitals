import 'package:just_audio/just_audio.dart';

class AudioHelper {
  static Future<void> playCorrectAudio() async {
    final player = AudioPlayer();
    await player.setAsset('assets/audio/correct.mp3');
    await player.play();
    player.dispose();
  }

  static Future<void> playOopsAudio() async {
    final player = AudioPlayer();
    await player.setAsset('assets/audio/oops.mp3');
    await player.play();
    player.dispose();
  }
}
