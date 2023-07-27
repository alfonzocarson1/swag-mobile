import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/blocs/update_profile_bloc/update_profile_bloc.dart';
import 'package:swagapp/modules/common/ui/loading.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'dynamic_toast_messages.dart';

class EmailVerificationPopup extends StatefulWidget {


  @override
  State<EmailVerificationPopup> createState() => _EmailVerificationPopup();
}

class _EmailVerificationPopup extends State<EmailVerificationPopup> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateProfileBloc, UpdateProfileState>(
        listener: (context, state) => state.maybeWhen(
          orElse: () {
            return null;
          },
          updated: () {

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: const Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.only(
            bottom: MediaQuery
                .of(context)
                .size
                .height / 1.3,
          ),
          backgroundColor: Colors.transparent,
          content: ToastMessage(
            message: 'A verification email has been sent',
          ),
          dismissDirection: DismissDirection.none));

            Loading.hide(context);
        //    Navigator.of(context).pop();

            return null;
          },
          initial: () {
            return Loading.show(context);
          },
          error: (message) => {
            Loading.hide(context),
            // Dialogs.showOSDialog(context, 'Error', message, 'OK', () {})
          },
        ),
        child: Center(
      child: Dialog(
        insetPadding: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        child: Stack(
          children: [
            Container(
              color: Palette.current.blackSmoke,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Verify email'.toUpperCase(),
                              textAlign: TextAlign.left,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                fontFamily: "KnockoutCustom",
                                fontSize: 44,
                                fontWeight: FontWeight.w300,
                                color: Palette.current.primaryNeonGreen,
                              )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Please verify your email by clicking the button in the verification email that was sent to you.',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                fontSize: 15,
                                letterSpacing: 0.3,
                                color: Palette.current.primaryWhiteSmoke,
                              )),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Didn’t get an email?',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                fontSize: 15,
                                letterSpacing: 0.3,
                                color: Palette.current.primaryWhiteSmoke,
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    PrimaryButton(
                      title: 'Resend verification email'.toUpperCase(),
                      onPressed: () {
                        context.read<UpdateProfileBloc>().add(
                            UpdateProfileEvent.askEmailVerification());
                      },
                      type: PrimaryButtonType.green,
                    ),

                    const SizedBox(
                      height: 30,
                    ),
                  ],
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
                  size: 20,
                ),
              ),
            )
          ],
        ),
      ),
    )
    );
  }

}