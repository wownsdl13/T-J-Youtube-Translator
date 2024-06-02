import 'package:youtube_translation/models/subtitle/one_srt/one_srt.dart';

class SrtSplitUtil {
  SrtSplitUtil(this.srt);

  final String srt;

  List<OneSrt> get split {
    var list = <OneSrt>[];
    var split = srt.split('\n');
    for (var index = 0; index < split.length; index++) {
      var text = split[index].trim();
      if (text.isNotEmpty) {
        var order = int.parse(text);
        String time = split[++index].trim();
        String subtitle = '';
        do {
          if (subtitle.isNotEmpty) {
            subtitle += '\n';
          }
          subtitle += split[++index].trim();
        } while (
            split.length > index + 1 && split[index + 1].trim().isNotEmpty);
        list.add(OneSrt(order: order, text: subtitle, period: time));
      }
    }
    return list;
  }
}
