import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../models/detail/sale_history_model.dart';
import '../utils/palette.dart';

extension on Priority {
  int compareTo(Priority other) => index.compareTo(other.index);
}

class CustomDataTable extends StatefulWidget {
  const CustomDataTable({super.key});

  @override
  State<CustomDataTable> createState() => _CustomDataTableState();
}

class _CustomDataTableState extends State<CustomDataTable> {
  late bool _ascendingDate;
  late bool _ascendingCondition;
  late bool _ascendingPrice;

  var histories = <Sale>[
    Sale(date: "12/12/2022", condition: "SEALED", price: 425.04),
    Sale(date: "12/15/2022", condition: "SEALED", price: 425.02),
    Sale(date: "12/19/2022", condition: "GAMED", price: 425.07),
    Sale(date: "12/13/2022", condition: "DISPLAYED", price: 425.07),
    Sale(date: "12/19/2022", condition: "GAMED", price: 425.03),
    Sale(date: "12/14/2022", condition: "DISPLAYED", price: 425.25),
    Sale(date: "12/19/2022", condition: "SEALED", price: 425.04),
    Sale(date: "12/14/2022", condition: "GAMED", price: 425.09),
    Sale(date: "12/19/2022", condition: "SEALED", price: 425.01),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _ascendingDate = true;
    _ascendingCondition = false;
    _ascendingPrice = false;

    histories.map((obj) {
      if (obj.condition == "SEALED") {
        obj.priority = Priority.first;
      }
      if (obj.condition == "DISPLAYED") {
        obj.priority = Priority.second;
      }
      if (obj.condition == "GAMED") {
        obj.priority = Priority.third;
      }
    }).toList();
    histories.sort((a, b) => b.date.compareTo(a.date));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: IntrinsicWidth(
            child: Stack(
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Palette.current.grey, width: 0.5))),
                ),
                DataTable(
                    dividerThickness: 0,
                    columnSpacing: 35,
                    columns: [
                      DataColumn(
                        label: SizedBox(
                          width: 100,
                          child: Row(
                            children: [
                              Text(
                                S.of(context).sale_data,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Palette.current.white),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _ascendingCondition = false;
                                    _ascendingPrice = false;
                                    if (_ascendingDate) {
                                      histories.sort(
                                          (a, b) => a.date.compareTo(b.date));
                                    } else {
                                      histories.sort(
                                          (a, b) => b.date.compareTo(a.date));
                                    }
                                    if (!_ascendingDate) {
                                      _ascendingDate = true;
                                    } else {
                                      _ascendingDate = false;
                                    }
                                  });
                                },
                                child: Icon(
                                    _ascendingDate
                                        ? Icons.expand_more
                                        : Icons.expand_less,
                                    size: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Row(
                            children: [
                              Text(
                                S.of(context).condition.toUpperCase(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Palette.current.white),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _ascendingDate = false;
                                      _ascendingPrice = false;
                                      if (_ascendingCondition) {
                                        histories.sort((a, b) =>
                                            b.priority!.compareTo(a.priority!));
                                      } else {
                                        histories.sort((a, b) =>
                                            a.priority!.compareTo(b.priority!));
                                      }
                                      if (!_ascendingCondition) {
                                        _ascendingCondition = true;
                                      } else {
                                        _ascendingCondition = false;
                                      }
                                    });
                                  },
                                  child: Icon(
                                      _ascendingCondition
                                          ? Icons.expand_more
                                          : Icons.expand_less,
                                      size: 20))
                            ],
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Row(
                            children: [
                              Text(
                                S.of(context).price,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Palette.current.white),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _ascendingDate = false;
                                      _ascendingCondition = false;

                                      if (_ascendingPrice) {
                                        histories.sort((a, b) =>
                                            a.price.compareTo(b.price));
                                      } else {
                                        histories.sort((a, b) =>
                                            b.price.compareTo(a.price));
                                      }
                                      if (!_ascendingPrice) {
                                        _ascendingPrice = true;
                                      } else {
                                        _ascendingPrice = false;
                                      }
                                    });
                                  },
                                  child: Icon(
                                      _ascendingPrice
                                          ? Icons.expand_more
                                          : Icons.expand_less,
                                      size: 20)),
                            ],
                          ),
                        ),
                      ),
                    ],
                    rows: histories
                        .map((history) => DataRow(cells: [
                              DataCell(Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(history.date,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              fontWeight: FontWeight.w300,
                                              color: Palette.current.grey)))),
                              DataCell(Center(
                                child: Text(history.condition,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            fontWeight: FontWeight.w300,
                                            color: Palette
                                                .current.primaryNeonPink)),
                              )),
                              DataCell(Center(
                                  child: Text("\$${history.price}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              fontWeight: FontWeight.w300,
                                              color: Palette
                                                  .current.primaryNeonGreen)))),
                            ]))
                        .toList()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
