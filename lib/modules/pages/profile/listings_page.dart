import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:swagapp/modules/pages/add/collection/list_item_preview_page.dart';
import 'package:http/http.dart' as http;

import '../../../generated/l10n.dart';
import '../../blocs/listing_bloc/listing_bloc.dart';
import '../../common/ui/refresh_widget.dart';
import '../../common/ui/simple_loader.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';
import '../../cubits/listing_for_sale/get_listing_for_sale_cubit.dart';
import '../../di/injector.dart';
import '../../models/listing_for_sale/listing_for_sale_model.dart';
import '../../models/listing_for_sale/profile_listing_model.dart';

class ListingsPage extends StatefulWidget {
  static const name = '/Listings';
  const ListingsPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const ListingsPage(),
      );

  @override
  State<ListingsPage> createState() => _ListingsPageState();
}

class _ListingsPageState extends State<ListingsPage> {
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadList();
  }

  Future loadList() async {
    getIt<ListingProfileCubit>().loadResults();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListingProfileCubit, ListingCubitState>(
        builder: (context, state) {
      return state.maybeWhen(
          orElse: () {
            return Container();
          },
          initial: () => ListView.builder(
                itemBuilder: (_, index) => SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: const Center(child: SimpleLoader()),
                ),
                itemCount: 1,
              ),
          loadedProfileListings:
              (List<ListingForSaleProfileResponseModel> listForSale) {
            return _getBody(listForSale.first.listForSale);
          });
    });
  }

  Widget _getBody(List<ListingForSaleModel> listingList) {
    return listingList.isNotEmpty
        ? RefreshWidget(
            onRefresh: loadList,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: GridView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 12.0,
                  mainAxisExtent: 215,
                ),
                itemCount: listingList.length,
                itemBuilder: (_, index) {
                  List<XFile> imageFileList = [];
                  var listItem = listingList[index];
                  var catalogItemId = listingList[index].catalogItemId;
                  addUrlImagesToList(listItem.productItemImageUrls, imageFileList);
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              if(catalogItemId != null){
                                Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(builder: (context) => ListItemPreviewPage(
                                  profileId: listItem.profileId,
                                  imgList: imageFileList, 
                                  itemName: listItem.productItemName ?? '', 
                                  itemPrice: listItem.productItemPrice ?? 0.0, 
                                  itemCondition: listItem.condition ?? '', 
                                  itemDescription: listItem.productItemDescription ?? '', 
                                  profileCollectionItemId: listItem.profileCollectionItemId ?? '', 
                                  catalogItemId: catalogItemId, 
                                  onClose: () {} )));
                              }                              
                            },
                            child: SizedBox(
                              height: MediaQuery.of(context).size.width * 0.38,
                              child: ClipRRect(
                                child: CachedNetworkImage(
                                  fit: BoxFit.fitHeight,
                                  imageUrl: listingList[index]
                                          .productItemImageUrls[0] ??
                                      'assets/images/Avatar.png',
                                  placeholder: (context, url) => SizedBox(
                                    height: 200,
                                    child: Center(
                                      child: CircularProgressIndicator(
                                        color: Palette.current.primaryNeonGreen,
                                        backgroundColor: Colors.white,
                                      ),
                                    ),
                                  ),
                                  errorWidget: (context, url, error) =>
                                      Image.asset(
                                          "assets/images/ProfilePhoto.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(listingList[index].productItemName ?? '',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Knockout",
                                  fontSize: 24,
                                  color: Palette.current.white)),
                      Text(
                          '${S.of(context).last_sale} \$${listingList[index].lastSale}',
                          overflow: TextOverflow.fade,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 13,
                                  color: Palette.current.primaryNeonGreen)),
                    ],
                  );
                },
              ),
            ),
          )
        : ListView.builder(
            itemBuilder: (_, index) => SizedBox(
              height: MediaQuery.of(context).size.height * 0.30,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/UnFavorite.png",
                      scale: 3,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        S.of(context).empty_listing,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontFamily: "KnockoutCustom",
                            fontWeight: FontWeight.w300,
                            fontSize: 30,
                            letterSpacing: 1.2,
                            color: Palette.current.darkGray),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            itemCount: 1,
          );
  }

  void makeCall() {
    context.read<ListingBloc>().add(const ListingEvent.getListingItem());
  }

  Future<XFile> downloadImageAndGetXFile(String imageUrl) async {
  // Download the image
  final response = await http.get(Uri.parse(imageUrl));
  if (response.statusCode != 200) {
    throw Exception("Failed to download image");
  }

  // Save the image to a local file
  final directory = await getTemporaryDirectory();
  final fileName = DateTime.now().millisecondsSinceEpoch.toString() + '.jpg';
  final localFilePath = '${directory.path}/$fileName';
  final localFile = File(localFilePath);
  await localFile.writeAsBytes(response.bodyBytes);

  // Create an XFile object and return it
  return XFile(localFilePath);
}
  
  Future<void> addUrlImagesToList(List<dynamic> imageUrls, List<XFile> imgList) async {
  for (String imageUrl in imageUrls) {
    try {
      final xFile = await downloadImageAndGetXFile(imageUrl);
      imgList.add(xFile);
      print('Image added to the list: $imageUrl');
    } catch (e) {
      print('Error downloading image: $e');
    }
  }
}
}
