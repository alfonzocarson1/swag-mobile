import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/palette.dart';

class CupertinoPickerView extends StatefulWidget {
  CupertinoPickerView({
    Key? key,
    this.cupertinoPickerOnChanged,
    this.cupertinoPickervalue,
    this.cupertinoPickerItems,
  }) : super(key: key);

  void Function(int)? cupertinoPickerOnChanged;
  final String? cupertinoPickervalue;
  final List<dynamic>? cupertinoPickerItems;
  @override
  _CupertinoPickerViewState createState() => _CupertinoPickerViewState();
}

class _CupertinoPickerViewState extends State<CupertinoPickerView> {
  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  var items = [];

  @override
  void initState() {
    // TODO: implement initState
    items = widget.cupertinoPickerItems!;
    super.initState();
  }

  Widget _buildBody() {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(left: 0, right: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                showCupertinoModalPopup<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return _buildBottomPicker(_buildCupertinoPicker());
                    });
              },
              child: Column(
                children: [
                  Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
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
                                  widget.cupertinoPickervalue ?? 'Item 1',
                                  style: const TextStyle(
                                    color: Colors.black,
                                  ),
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCupertinoPicker() {
    return CupertinoPicker(
      magnification: 1.5,
      backgroundColor: Colors.white,
      itemExtent: 50, //height of each item
      looping: true,
      onSelectedItemChanged: widget.cupertinoPickerOnChanged,
      children: items
          .map((item) => Center(
                child: Text(
                  item,
                  style: const TextStyle(fontSize: 20),
                ),
              ))
          .toList(),
    );
  }
}

Widget _buildBottomPicker(Widget picker) {
  return Container(
    height: 300,
    padding: const EdgeInsets.only(top: 6.0),
    color: CupertinoColors.white,
    child: DefaultTextStyle(
      style: const TextStyle(
        color: CupertinoColors.black,
        fontSize: 22.0,
      ),
      child: GestureDetector(
        // Blocks taps from propagating to the modal sheet and popping.
        onTap: () {},
        child: SafeArea(
          top: false,
          child: picker,
        ),
      ),
    ),
  );
}
