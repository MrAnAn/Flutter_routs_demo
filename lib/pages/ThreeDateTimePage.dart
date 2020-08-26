import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//引入第三方的日期时间库(这个库功能比较强大,是ios风格的显示,同时支持跨平台)
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class ThreeDateTimePage extends StatefulWidget{
  ThreeDateTimePage({Key key}):super(key: key);
  _ThreeDateTimePageState createState() => _ThreeDateTimePageState();
}
class _ThreeDateTimePageState extends State<ThreeDateTimePage> {

  DateTime _dateTime = DateTime.now();

  //定义显示日期的方法
  _showDatePicker() {
    DatePicker.showDatePicker(
      context,
      onMonthChangeStartWithFirstDate: true,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text('custom Done', style: TextStyle(color: Colors.red)),
      ),
      minDateTime: DateTime.parse("1970-01-01"),
      maxDateTime: DateTime.parse("2100-01-01"),
      initialDateTime: _dateTime,
      dateFormat: "yyyy-MMMM-dd",
      locale: DateTimePickerLocale.zh_cn,
      onClose: () => print("----- onClose -----"),
      onCancel: () => print('onCancel'),
      onChange: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第三方日期组件"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  child: Row(
                    children: [
                      Text("2020-08-24"),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                  onTap: () {}
              ),
            ],
          ),
        ],
      ),
    );
  }
}

