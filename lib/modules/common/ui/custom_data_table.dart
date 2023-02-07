import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../models/detail/sale_history_model.dart';
import '../utils/palette.dart';

class CustomDataTable extends StatefulWidget {
  const CustomDataTable({super.key});

  @override
  State<CustomDataTable> createState() => _CustomDataTableState();
}

class _CustomDataTableState extends State<CustomDataTable> {
  var histories = <Sale>[
    Sale(
      date: "12/19/2022",
      condition: "SALED",
      price: "\$425.00",
    ),
    Sale(
      date: "12/19/2022",
      condition: "SALED",
      price: "\$425.00",
    ),
    Sale(
      date: "12/19/2022",
      condition: "SALED",
      price: "\$425.00",
    ),
    Sale(
      date: "12/19/2022",
      condition: "DISPLAYED",
      price: "\$425.00",
    ),
    Sale(
      date: "12/19/2022",
      condition: "SALED",
      price: "\$425.00",
    ),
    Sale(
      date: "12/19/2022",
      condition: "DISPLAYED",
      price: "\$425.00",
    ),
    Sale(
      date: "12/19/2022",
      condition: "SALED",
      price: "\$425.00",
    ),
    Sale(
      date: "12/19/2022",
      condition: "DISPLAYED",
      price: "\$425.00",
    ),
    Sale(
      date: "12/19/2022",
      condition: "SALED",
      price: "\$425.00",
    ),
  ];

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
                    sortColumnIndex: 1,
                    dividerThickness: 0,
                    columnSpacing: 35,
                    columns: [
                      DataColumn(
                        label: Container(
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
                              Icon(Icons.expand_more)
                            ],
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Row(
                            children: [
                              Text(
                                S.of(context).condition,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Palette.current.white),
                              ),
                              Icon(Icons.expand_more)
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
                              Icon(Icons.expand_more),
                            ],
                          ),
                        ),
                      ),
                    ],
                    rows: histories
                        .map((volunteer) => DataRow(cells: [
                              DataCell(Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(volunteer.date,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              fontWeight: FontWeight.w300,
                                              color: Palette.current.grey)))),
                              DataCell(Center(
                                  child: Text(volunteer.condition,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              fontWeight: FontWeight.w300,
                                              color: Palette
                                                  .current.primaryNeonPink)))),
                              DataCell(Center(
                                  child: Text(volunteer.price.toString(),
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
