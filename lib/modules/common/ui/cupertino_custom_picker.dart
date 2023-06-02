import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/palette.dart';

class CupertinoPickerView extends StatefulWidget {
  CupertinoPickerView({
    Key? key,
    this.cupertinoPickerOnChanged,
    this.cupertinoPickervalue,
      this.cupertinoPickerItems,
     this.onDone,
     this.errorText,
     this.looping,
   }) : super(key: key);

   void Function(int)? onDone;
   void Function(int)? cupertinoPickerOnChanged;
   final String? cupertinoPickervalue;
   final List<dynamic>? cupertinoPickerItems;
   final String? errorText;
   final bool? looping;
   @override
   _CupertinoPickerViewState createState() => _CupertinoPickerViewState();
 }

class _CupertinoPickerViewState extends State<CupertinoPickerView> {
  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  var items = [];
  int selectedItemPos = 0;
  @override
  void initState() {
    items = widget.cupertinoPickerItems!;
    super.initState();
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              showCupertinoModalPopup<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return _buildBottomPicker(
                        context, _buildCupertinoPicker(), widget.onDone!);
                  });
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
                                widget.cupertinoPickervalue ?? "",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      fontSize: 15,
                                      fontFamily: "Ringside",
                                      color: Palette.current.primaryNero,
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
    );
  }

  Widget _buildCupertinoPicker() {
    return CupertinoPicker(
      scrollController: FixedExtentScrollController(
        initialItem: 0),
       backgroundColor: Colors.white,
       itemExtent: 50, //height of each item
       looping: widget.looping ?? true,
       onSelectedItemChanged: (value) {
         setState(() {
           selectedItemPos = value;
        });
      },
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

  Widget _buildBottomPicker(
      BuildContext context, Widget picker, Function(int) onDone) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: CupertinoColors.black,
        fontSize: 22.0,
      ),
      child: GestureDetector(
        // Blocks taps from propagating to the modal sheet and popping.
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
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
                      onDone(selectedItemPos);
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
            Container(
                height: 300,
                padding: const EdgeInsets.only(top: 6.0),
                color: CupertinoColors.white,
                child: picker),
          ],
        ),
      ),
    );
  }
}
