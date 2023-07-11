import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

import '../../../../models/overlay_buton/overlay_button_model.dart';

class CustomOverlayButton extends StatefulWidget {
  final List<CustomOverlayItemModel> items;
  final Widget icon;
  final void Function(String) onItemSelected;

  const CustomOverlayButton({
    super.key,
    required this.items,
    required this.icon,
    required this.onItemSelected,
  });

  @override
  _CustomOverlayButtonState createState() => _CustomOverlayButtonState();
}

class _CustomOverlayButtonState extends State<CustomOverlayButton> {
  final GlobalKey _buttonKey = GlobalKey();
  OverlayEntry? _overlayEntry;

  void _showOverlay() {
    final RenderBox renderBox =
        _buttonKey.currentContext!.findRenderObject() as RenderBox;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);

    _overlayEntry = OverlayEntry(
      builder: (BuildContext context) {
        double deviceSizeRatio = MediaQuery.of(context).size.aspectRatio;

        return Stack(
          children: [
            GestureDetector(
              onTap: () {
                _overlayEntry?.remove();
                _overlayEntry = null;
              },
              behavior: HitTestBehavior.translucent,
            ),
            Positioned(
              right: deviceSizeRatio * 100, // You can adjust the position here
              top: offset.dy + size.height,
              width: deviceSizeRatio * 450,
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(8.0), // Adjust the corner radius here
                child: Material(
                  color: Colors.black,
                  elevation: 8.0,
                  child: ListView(
                    padding: const EdgeInsets.all(4),
                    shrinkWrap: true,
                    children:
                        widget.items.map<Widget>((CustomOverlayItemModel item) {
                      return ListTile(
                        leading: Image.asset(
                          item.imagePath,
                          height: deviceSizeRatio * 65,
                          width: deviceSizeRatio * 65,
                          fit: BoxFit.contain,
                          color: Colors.white,
                        ),
                        title: Text(
                          item.label,
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontFamily: "RingsideRegular",
                              fontSize: 16,
                              color: Palette.current.primaryWhiteSmoke),
                        ),
                        onTap: () {
                          setState(() {
                            widget.onItemSelected(item.label);
                            _overlayEntry?.remove();
                            _overlayEntry = null;
                          });
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );

    Overlay.of(context)!.insert(_overlayEntry!);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      key: _buttonKey,
      onPressed: _showOverlay,
      icon: widget.icon,
    );
  }
}
