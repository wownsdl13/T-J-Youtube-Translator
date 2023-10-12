import 'package:youtube_translation/models/one_srt_model.dart';

class SrtSplitUtil{
  SrtSplitUtil(this.srt);
  final String srt;

  List<OneSrtModel> get split{
    var list = <OneSrtModel>[];
    var split = srt.split('\n');
    for(var index = 0; index < split.length; index++){
      var text = split[index].trim();
      if(text.isNotEmpty){
        var order = int.parse(text);
        String time = split[++index].trim();
        String subtitle = '';
        do{
          if(subtitle.isNotEmpty){
            subtitle += '\n';
          }
          subtitle += split[++index].trim();
        }while(split[index + 1].trim().isNotEmpty);
        list.add(OneSrtModel(order, time, subtitle));
      }
    }
    return list;
  }
}