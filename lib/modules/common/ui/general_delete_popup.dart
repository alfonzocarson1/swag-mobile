import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/cubits/listing_for_sale/get_listing_for_sale_cubit.dart';
import 'package:swagapp/modules/di/injector.dart';
import 'package:swagapp/modules/models/listing_for_sale/listing_for_sale_model.dart';
import '../../models/buy_for_sale_listing/buy_for_sale_listing_model.dart';
import '../../models/ui_models/checkbox_model.dart';
import '../utils/palette.dart';


class GeneralDeletePopup extends StatefulWidget {
  const GeneralDeletePopup(
      {super.key,
      required this.title,
      required this.message,
      required this.options,
      required this.model,
      required this.onSubmit});

  final String title;
  final String message;
  final List<CheckboxModel> options;
  final BuyForSaleListingModel model;
  final Function onSubmit;

  @override
  State<GeneralDeletePopup> createState() => _GeneralDeletePopupState();
}

class _GeneralDeletePopupState extends State<GeneralDeletePopup> {
  late ListingForSaleModel model;

  @override
  Widget build(BuildContext context) {
    double deviceScreenRatio = MediaQuery.of(context).size.aspectRatio;
    List<CheckboxModel> options = widget.options;
    int selectedOption = -1;    
    model = ListingForSaleModel(
      accountId: widget.model.profileId,
      productItemId: widget.model.productItemId,
      productItemName: widget.model.productItemName,
      catalogItemId: widget.model.catalogItemId,
      sold: false,
      forSale: true,      
    );

    return Dialog(
      insetPadding: const EdgeInsets.all(20),
      child: Theme(
        data: Theme.of(context).copyWith(
          unselectedWidgetColor: Palette.current.darkGray,
        ),
        child: Container(
          color: Palette.current.blackSmoke,
          height: deviceScreenRatio * 1200,
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0  ) ,
          child: Column(            
            children: [
                 Align(
                    alignment: Alignment.topRight,
                     child: SizedBox(
                      height: deviceScreenRatio*100,
                      width: deviceScreenRatio*100,
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
              Container(
                height: deviceScreenRatio * 1050,
                color: Palette.current.blackSmoke,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 25, 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [              
                      Text(widget.title.toUpperCase(),
                          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                                fontFamily: "KnockoutCustom",
                                fontSize: 44,
                                fontWeight: FontWeight.w300,
                                color: Palette.current.primaryNeonGreen,
                              )),
                      SizedBox(
                        height: deviceScreenRatio * 50,
                      ),
                      Text(widget.message,
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                fontSize: 16,
                                letterSpacing: 0.3,
                                color: Palette.current.primaryWhiteSmoke,
                              )),
                      SizedBox(
                        height: deviceScreenRatio * 50,
                      ),
                      Expanded(
                        flex: 1,
                        child: StatefulBuilder(builder: (context, setState) {
                        return ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: options.length,
                          itemBuilder: (context, index) {
                            return ListTile(                              
                             contentPadding: const EdgeInsets.all(1),
                              title: Text(options[index].title,
                                  style:
                                      Theme.of(context).textTheme.bodySmall!.copyWith(
                                            fontSize: 16,
                                            letterSpacing: 0.3,
                                            color: Palette.current.primaryWhiteSmoke,
                                          )),
                              leading: SizedBox(
                                height: 15,
                                width: 15,
                                child: Checkbox(
                                  value: selectedOption == index,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      selectedOption = value == true ? index : -1;
                                      model = model.copyWith(removedReason: options[index].title, status: "removed");                              
                                    });
                                  },
                                  activeColor: Palette.current.primaryNeonGreen,
                                  checkColor: Palette.current.primaryEerieBlack,
                                ),
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
                          setState(() {
                            getIt<ListingProfileCubit>().removeListingItem(model);
                            Navigator.of(context).pop();
                            Navigator.of(context).pop();
                          });
                        },
                        type: PrimaryButtonType.green,
                      ),               
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
