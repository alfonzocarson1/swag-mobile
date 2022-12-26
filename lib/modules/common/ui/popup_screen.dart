import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

class PopUp extends StatelessWidget {
  const PopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Stack(
        children: [
          Container(
            color: Palette.current.blackSmoke,
            height: 400,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Text("WELCOME @MRDOUG",
                            textAlign: TextAlign.left,
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                    fontWeight: FontWeight.w100,
                                    color: Palette.current.primaryNeonGreen,
                                    fontSize: 35)),
                        Text(
                            "It looks like you have an account on swag.golf. Would you like to import your transaction history? You will be able to customize this later.",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                    color: Palette.current.primaryWhiteSmoke,
                                    fontSize: 18))
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    PrimaryButton(
                      title: "YES, IMPORT MY INFO",
                      onPressed: () {},
                      type: PrimaryButtonType.green,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    PrimaryButton(
                      title: "NO, I'LL DO THIS LATER",
                      onPressed: () {},
                      type: PrimaryButtonType.pink,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 3,
            child: IconButton(
              iconSize: 30,
              color: Palette.current.primaryNeonGreen,
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.clear_outlined,
              ),
            ),
          )
        ],
      ),
    );
  }
}