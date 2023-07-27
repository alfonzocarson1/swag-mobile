import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../generated/l10n.dart';
import '../utils/palette.dart';
import '../utils/utils.dart';

class CupertinoMonthYearPickerView extends StatefulWidget {
  CupertinoMonthYearPickerView(
      {Key? key,
      required this.cupertinoDatePickervalue,
      required this.onDone,
      this.errorText})
      : super(key: key);

  final DateTime cupertinoDatePickervalue;
  Function(DateTime) onDone;
  String? errorText;

  @override
  State<CupertinoMonthYearPickerView> createState() =>
      _CupertinoMonthYearPickerViewState();
}

class _CupertinoMonthYearPickerViewState
    extends State<CupertinoMonthYearPickerView> {
  DateTime selectDate = DateTime.now();

  DateTime maximumDate = DateTime.now().add(const Duration(days: 7300));
  DateTime mindate = DateTime.now().subtract(const Duration(hours: 1));

  bool initMessage = true;

  var myFormat = DateFormat('d-MM-yyyy');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  Widget _buildBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            _showDatePicker(context);
          },
          child: Column(
            children: [
              Container(
                height: 63,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: widget.errorText != null
                          ? Palette.current.primaryNeonPink
                          : Colors.white,
                    ),
                    color: Colors.transparent),
                padding: const EdgeInsets.only(bottom: 6),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: Palette.current.primaryWhiteSmoke,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Text(
                              initMessage
                                  ? S.of(context).expiration
                                  : formatDateWithMonthAndYear(widget
                                      .cupertinoDatePickervalue
                                      .toString()),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: Palette.current.primaryNero,
                                      letterSpacing: 0.02,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                            )),
                        const Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.arrow_drop_down_sharp,
                              color: Colors.black,
                              size: 20.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.errorText ?? '',
                  textAlign: TextAlign.start,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Palette.current.primaryNeonPink),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  void _showDatePicker(ctx) {
    showCupertinoModalPopup(
        context: ctx,
        builder: (_) => Container(
              height: 300,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  Container(
                    color: Colors.grey.shade200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CupertinoButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 5.0,
                          ),
                          child: const Text('Cancel'),
                        ),
                        CupertinoButton(
                          onPressed: () {
                            initMessage = false;
                            widget.onDone(selectDate);
                          },
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 5.0,
                          ),
                          child: const Text('Confirm'),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                      child: MonthYearPicker(
                    initialDate: selectDate,
                    onChange: (value) => {
                      setState(() {
                        selectDate = value;
                      }),
                      debugPrint('$value')
                    },
                  )),
                ],
              ),
            ));
  }
}

class MonthYearPicker extends StatefulWidget {
  final ValueSetter<DateTime> onChange;
  final DateTime initialDate;

  MonthYearPicker({required this.onChange, required this.initialDate});

  @override
  _MonthYearPickerState createState() => _MonthYearPickerState();
}

class _MonthYearPickerState extends State<MonthYearPicker> {
  int _selectedMonthIndex = -1;
  int _selectedYear = DateTime.now().year;

  List<String> months = [
    '01',
    '02',
    '03',
    '04',
    '05',
    '06',
    '07',
    '08',
    '09',
    '10',
    '11',
    '12'
  ];

  List<int> years = List.generate(50, (index) => DateTime.now().year + index);

  void _updateDateTime() {
    final DateTime selectedDateTime =
        DateTime(_selectedYear, _selectedMonthIndex + 1);
    widget.onChange(selectedDateTime);
  }

  initIntialDate() {
    setState(() {
      _selectedMonthIndex = widget.initialDate.month - 1;
      _selectedYear = widget.initialDate.year;
    });
  }

  @override
  void initState() {
    initIntialDate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Show the CupertinoPicker for month selection
          SizedBox(
            width: 150,
            height: 250,
            child: Expanded(
              child: CupertinoPicker(
                itemExtent: 32,
                scrollController: FixedExtentScrollController(
                    initialItem: _selectedMonthIndex),
                onSelectedItemChanged: (int index) {
                  setState(() {
                    _selectedMonthIndex = index;
                  });
                  _updateDateTime();
                },
                children: List<Widget>.generate(months.length, (int index) {
                  return Center(
                    child: Text(
                      months[index],
                      style: const TextStyle(fontSize: 18),
                    ),
                  );
                }),
              ),
            ),
          ),
          const SizedBox(width: 20),
          // Show the CupertinoPicker for year selection
          SizedBox(
            width: 150,
            height: 250,
            child: Expanded(
              child: CupertinoPicker(
                itemExtent: 32,
                scrollController: FixedExtentScrollController(
                    initialItem: years.indexOf(_selectedYear)),
                onSelectedItemChanged: (int index) {
                  setState(() {
                    _selectedYear = years[index];
                  });
                  _updateDateTime();
                },
                children: List<Widget>.generate(years.length, (int index) {
                  return Center(
                    child: Text(
                      '${years[index]}',
                      style: const TextStyle(fontSize: 18),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
