import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AgePage extends StatelessWidget {
  const AgePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'Age',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Column(
          children: [
            DateSelector(),
            SizedBox(height: 10,),
            SummaryInfo(),
          ],
        ),
      ),
    );
  }
}

class DateSelector extends StatefulWidget {
  const DateSelector({super.key});

  @override
  State<DateSelector> createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  DateTime birthDate = DateTime(2024, 1, 1);
  DateTime presentDate = DateTime.now();

  void _showDialog(Widget child) {
    showCupertinoModalPopup(
      context: context, 
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: CupertinoColors.white,
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Date of Birth',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            CupertinoButton(
              onPressed: () => _showDialog(
                CupertinoDatePicker(
                  initialDateTime: birthDate,
                  mode: CupertinoDatePickerMode.date,
                  use24hFormat: true,
                  showDayOfWeek: false,
                  onDateTimeChanged: (DateTime newDate) {
                    setState(() => birthDate = newDate);
                  },
                ),
              ),
              child: Text(
                DateFormat.yMMMd().format(birthDate),
                style: const TextStyle(
                  fontSize: 22.0,
                  color: Colors.deepOrange,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Today',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            CupertinoButton(
              onPressed: () => _showDialog(
                CupertinoDatePicker(
                  initialDateTime: presentDate,
                  mode: CupertinoDatePickerMode.date,
                  use24hFormat: true,
                  showDayOfWeek: false,
                  onDateTimeChanged: (DateTime newDate) {
                    setState(() => presentDate = newDate);
                  },
                ),
              ),
              child: Text(
                DateFormat.yMMMd().format(presentDate),
                style: const TextStyle(
                  fontSize: 22.0,
                  color: Colors.deepOrange,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SummaryInfo extends StatefulWidget {
  const SummaryInfo({super.key});

  @override
  State<SummaryInfo> createState() => _SummaryInfoState();
}

class _SummaryInfoState extends State<SummaryInfo> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.grey.shade900,
        ),
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Age',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '13',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.deepOrange
                          ),
                        ),
                        Text(' years')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text( 
                          '7 months | 30 days',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                
                const VerticalDivider(),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Next Birthday',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8,),
                    Container(
                      width: 36,
                      height: 36,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.deepOrange,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.cake_outlined,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8,),
                    const Text('Friday'),
                    const SizedBox(height: 8,),
                    const Text('4 month | 1 day')
                  ],
                ),
              ],
            ),

            const SizedBox(height: 10.0,),

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Summary'),
              ],
            ),

            const SizedBox(height: 10.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Years',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '13',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 26,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      'Days',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '4992',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Months',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '13',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 26,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      'Hours',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '119808',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Weeks',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '713',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 26,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      'Minutes',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 16,
                      ),
                    ),
                    const Divider(),
                    Text(
                      '7188480',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}