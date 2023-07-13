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
              height: 500,
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
                    height: 400,
                    child: CupertinoDatePicker(
                        minimumDate: mindate,
                        maximumDate: maximumDate,
                        mode: CupertinoDatePickerMode.date,
                        initialDateTime: selectDate,
                        onDateTimeChanged: (val) {
                             setState(() {
                            selectDate = val;
                          });
                        }),
                  ),
                ],
              ),
            ));
  }
}
