class OneSrtModel{
  OneSrtModel(this.order, this.time, this._text);
  final int order;
  final String time;
  String _text;
  String get text => _text;
  set setText(String text) => _text = text;
}