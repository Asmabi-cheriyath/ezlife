import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}



class _ScheduleState extends State<Schedule> {

  TimeOfDay _fromTime = TimeOfDay(hour: 9, minute: 0); // Initial 'from' time
  TimeOfDay _toTime = TimeOfDay(hour: 17, minute: 0); // Initial 'to' time

  Future<void> _selectTime(BuildContext context, bool isFrom) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: isFrom ? _fromTime : _toTime,
    );
    if (picked != null) {
      setState(() {
        if (isFrom) {
          _fromTime = picked;
        } else {
          _toTime = picked;
        }
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    // TimeOfDay selectedTime=TimeOfDay.now();
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250,
              width: 330,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: "Name",
              ),
            ),
          ),
          Text("Time : "),

            Text(
              'From: ${_fromTime.format(context)}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'To: ${_toTime.format(context)}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _selectTime(context, true),
              child: Text('Select From Time'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => _selectTime(context, false),
              child: Text('Select To Time'),
            ),


          // Row(children: [Text("${selectedTime.hour}:${selectedTime.minute}"),ElevatedButton(onPressed: () async {
          //   final TimeOfDay? timeOfDay =await showTimePicker(context: context, initialTime: TimeOfDay.now());
          // }, child: Text("From"))],),
          // Row(children: [Text("${selectedTime.hour}:${selectedTime.minute}"),
          // InkWell(onTap: () async{
          //    final TimeOfDay? timeOfDay =await showTimePicker(context: context, initialTime: TimeOfDay.now());
          // },
          //   child: Container(
          //      height: 40,
          //                                             width: 80,
          //                                             decoration: BoxDecoration(
                                                          
          //                                                 border: Border.all(color: Colors.white),
          //                                                 borderRadius: BorderRadius.circular(15)),
          //                                             child: Center(
          //                                                 child: Text(
          //                                               "To",
          //                                             )),
          //   ),
          // )],),
        ],
      ),
    );
  }
}
