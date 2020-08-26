import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DateTimePage extends StatefulWidget{
  DateTimePage({Key key}):super(key: key);
  _DateTimePageState createState() => _DateTimePageState();
}
class _DateTimePageState extends State<DateTimePage>{


  //自定义显示当前日期的方法(这种方法获取的日式是英文的格式)
  /*_showDatePicker(){
    showDatePicker(
      context: context,
      initialDate:_nowTime,
      firstDate: DateTime(1970),
      lastDate: DateTime(2100)
    ).then((value){
      print(value);
    });
  }*/

  //获取当前的日期
  var _nowDate = DateTime.now();
  var _nowTime = TimeOfDay(hour: 12,minute: 00);

  //异步方法
  _showDatePicker() async {
    var result = await showDatePicker(
        context: context,
        initialDate:_nowDate,
        firstDate: DateTime(1970),
        lastDate: DateTime(2100)
    );
    print(result);
    setState(() {
      this._nowDate = result;
    });
  }
  _showTimePicker() async{
    var resultTime = await showTimePicker(
      context: context,
      initialTime: _nowTime,
    );
    setState(() {
      this._nowTime=resultTime;
    });
  }

  
  @override
  void initState() {
    super.initState();
    //print(_nowTime);
    //print(_nowTime.millisecondsSinceEpoch);//将当前的时间转换为时间轴
    //将时间戳转换为当前的时间
    //print(DateTime.fromMillisecondsSinceEpoch(_nowTime.millisecondsSinceEpoch));
    //var Now_Time = formatDate(DateTime.now(), [yy, '年', M, '月', d]);
    //print(Now_Time);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("官方自带日期组件"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(//在某些情况下,不能使用button的时间使用
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //这儿在界面上显示的时间有问题
                Text("${formatDate(_nowDate,[yy, '年', M, '月', d])}"),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            onTap: this._showDatePicker,
          ),
          InkWell(//在某些情况下,不能使用button的时间使用
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //这儿在界面上显示的时间有问题
                  Text("10:30"),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
              onTap: this._showTimePicker,
          ),
        ],
      ),
    );
  }
}