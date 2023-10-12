import 'package:flutter/material.dart';

class TitleTranslateWidget extends StatelessWidget {
  const TitleTranslateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Container(
        constraints: BoxConstraints(
            minWidth: 100
        ),
        padding: EdgeInsets.only(top: 13),
        child: Text('Title : ', textAlign: TextAlign.end, style: TextStyle(color: Colors.white, fontSize: 18),),
      ),
        SizedBox(width: 10,),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(width: 1, color: Colors.white)),
            constraints: BoxConstraints(maxWidth: 700),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: TextField(maxLines: null,
                    cursorColor: Colors.grey.shade400,
                    decoration: InputDecoration(border: InputBorder.none, hintStyle: TextStyle(color: Colors.grey.shade700), hintText: 'Input youtube title'),),
                ),
                _translated(context)
              ],
            )),
        SizedBox(width: 80,)
    ],);
  }


  Widget _translated(BuildContext context){
    if(true) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(height: 1, thickness: 1, color: Colors.white,),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 10, right: 15, top: 15, bottom: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Text('anser is here',
                  style: TextStyle(color: Colors.white, fontSize: 16, height: 1.3),)),
                Icon(Icons.copy, color: Colors.white, size: 20,)
              ],
            ),
          ),
        ],
      );
    }else{
      return Container();
    }
  }
}
