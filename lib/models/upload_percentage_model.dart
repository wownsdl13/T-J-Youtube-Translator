class UploadPercentageModel{
  UploadPercentageModel(this._text);
  int _percentage = 0;
  int get percentage => _percentage;
  set setPercentage(int percentage) => _percentage = percentage;
  String _text;
  String get text => _text;
  set setText(String text) => _text = text;
}