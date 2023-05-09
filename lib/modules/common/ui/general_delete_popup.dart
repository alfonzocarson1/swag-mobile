import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import '../../models/ui_models/checkbox_model.dart';
import '../utils/palette.dart';

class GeneralDeletePopup extends StatefulWidget {
  const GeneralDeletePopup(
      {super.key,
      required this.title,
      required this.message,
      required this.options,
      this.model,
      required this.onSubmit});

  final String title;
  final String message;
  final List<CheckboxModel> options;
  final dynamic model;
  final Function onSubmit;

  @override
  State<GeneralDeletePopup> createState() => _GeneralDeletePopupState();
}

class _GeneralDeletePopupState extends State<GeneralDeletePopup> {
  @override
  Widget build(BuildContext context) {
    double deviceScreenRatio = MediaQuery.of(context).devicePixelRatio;
    List<CheckboxModel> options = widget.options;
    int selectedOption = -1;

    return Dialog(
      child: Theme(
        data: Theme.of(context).copyWith(
          unselectedWidgetColor: Palette.current.darkGray,
        ),
        child: Container(
          height: deviceScreenRatio * 220,
          color: Palette.current.blackSmoke,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(31, 15, 31, 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Transform(
                  transform: Matrix4.translationValues(deviceScreenRatio * 105, deviceScreenRatio * -1,0),
                   child: SizedBox(
                    height: deviceScreenRatio*10,
                     child: IconButton(
                      padding: const EdgeInsets.all(0),
                       color: Palette.current.primaryNeonGreen,
                       onPressed: () {
                         Navigator.of(context).pop();
                       },
                       icon: const Icon(
                         Icons.clear_outlined,
                         size: 20,
                       ),
                     ),
                   ),
                 ),
                Text(widget.title.toUpperCase(),
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          fontFamily: "KnockoutCustom",
                          fontSize: 44,
                          fontWeight: FontWeight.w300,
                          color: Palette.current.primaryNeonGreen,
                        )),
                SizedBox(
                  height: deviceScreenRatio * 10,
                ),
                Text(widget.message,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 16,
                          letterSpacing: 0.3,
                          color: Palette.current.primaryWhiteSmoke,
                        )),
                SizedBox(
                  height: deviceScreenRatio * 10,
                ),
                Expanded(child: StatefulBuilder(builder: (context, setState) {
                  return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: options.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(options[index].title,
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 16,
                                      letterSpacing: 0.3,
                                      color: Palette.current.primaryWhiteSmoke,
                                    )),
                        leading: Checkbox(
                          value: selectedOption == index,
                          onChanged: (bool? value) {
                            setState(() {
                              selectedOption = value == true ? index : -1;
                            });
                          },
                          activeColor: Palette.current.primaryNeonGreen,
                          checkColor: Palette.current.primaryEerieBlack,
                        ),
                      );
                    },
                  );
                })),
                SizedBox(
                  height: deviceScreenRatio * 10,
                ),
                PrimaryButton(
                  title: S.of(context).razon_remove_btn,
                  onPressed: () {
                    setState(() {});
                  },
                  type: PrimaryButtonType.green,
                ),               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
