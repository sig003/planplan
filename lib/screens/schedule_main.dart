import 'package:flutter/material.dart';
import 'package:planplan/screens/schedule_list.dart';
import 'package:planplan/screens/add_job_dialog.dart';
import 'package:planplan/screens/bottom_navigation_bar.dart';
import 'package:planplan/screens/delete_forever.dart';

class ScheduleMain extends StatefulWidget {
  const ScheduleMain({Key? key}) : super(key: key);

  @override
  State<ScheduleMain> createState() => _ScheduleMainState();
}

class _ScheduleMainState extends State<ScheduleMain> {
  int bottomIndex = 0;
  setBottomIndex(int index) {
    setState(() {
      bottomIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('PlanPlan'),
      ),
      body: ScheduleList(bottomIndex: bottomIndex, setBottomIndex: setBottomIndex),
        floatingActionButton: (bottomIndex != 1) ? FloatingActionButton(
        child: (bottomIndex == 0) ? Icon(Icons.add) : Icon(Icons.delete_forever) ,
        onPressed: () async {
          if (bottomIndex == 0) {
            await showDialog(context: context, builder: (context) {
              return AddJobDialog();
            });
            setState(() {});
          } else {
            DeleteForever(context, setBottomIndex);
          }
        },
      ) : SizedBox.shrink(),
      bottomNavigationBar: CustomBottomNavagationBar(setBottomIndex: setBottomIndex),
    );
  }
}


