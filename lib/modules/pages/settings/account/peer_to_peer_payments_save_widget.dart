import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../generated/l10n.dart';
import '../../../common/ui/custom_text_form_field.dart';
import '../../../common/ui/loading.dart';
import '../../../common/ui/primary_button.dart';
import '../../../common/ui/pushed_header.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../common/utils/utils.dart';
import '../../../cubits/peer_to_peer_payments/peer_to_peer_payments_cubit.dart';
import '../../../di/injector.dart';
import '../../../models/settings/peer_to_peer_payments_model.dart';

class PeerToPeerPaymentsSaveWidget extends StatefulWidget {
  static const name = '/PeerToPeerPaymentsSaveWidget';

  const PeerToPeerPaymentsSaveWidget(
      {super.key,
      this.venmo = false,
      this.cashTag = false,
      this.payPal = false});

  final bool venmo;
  final bool cashTag;
  final bool payPal;

  static Route route(
          {required bool venmo, required bool cashTag, required bool payPal}) =>
      PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => PeerToPeerPaymentsSaveWidget(
            venmo: venmo, cashTag: cashTag, payPal: payPal),
      );

  @override
  State<PeerToPeerPaymentsSaveWidget> createState() =>
      _PeerToPeerPaymentsSaveWidgetState();
}

class _PeerToPeerPaymentsSaveWidgetState
    extends State<PeerToPeerPaymentsSaveWidget> {
  final FocusNode _emailNode = FocusNode();
  final _emailController = TextEditingController();

  final FocusNode _venmoNode = FocusNode();
  final _venmoController = TextEditingController();

  final FocusNode _cashAppNode = FocusNode();
  final _cashAppController = TextEditingController();

  Color _emailBorder = Palette.current.primaryWhiteSmoke;
  String? emailErrorText;

  Color _venmoBorder = Palette.current.primaryWhiteSmoke;
  String? venmoErrorText;

  Color _cashAppBorder = Palette.current.primaryWhiteSmoke;
  String? cashAppErrorText;

  @override
  void dispose() {
    _emailNode.dispose();
    _venmoNode.dispose();
    _cashAppNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _emailNode.addListener(() {
      setState(() {
        emailErrorText = null;
        _emailBorder = _emailNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _venmoNode.addListener(() {
      setState(() {
        venmoErrorText = null;
        _venmoBorder = _venmoNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _cashAppNode.addListener(() {
      setState(() {
        cashAppErrorText = null;
        _cashAppBorder = _cashAppNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PushedHeader(
        showBackButton: true,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
              S.of(context).peer_to_peer_payment_options_title.toUpperCase(),
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  letterSpacing: 1,
                  fontWeight: FontWeight.w300,
                  fontFamily: "KnockoutCustom",
                  fontSize: 30,
                  color: Palette.current.primaryNeonGreen)),
        ),
        height: 90,
      ),
      backgroundColor: Palette.current.primaryEerieBlack,
      body: BlocListener<PeerToPeerPaymentsCubit, PeerToPeerPaymentsState>(
          listener: (context, state) => state.maybeWhen(orElse: () {
                return null;
              }, loading: (bool loadin) {
                return loadin ? Loading.show(context) : Loading.hide(context);
              }),
          child: _getBody()),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20.0, bottom: 20.0, right: 20.0),
        child: PrimaryButton(
          title: S.of(context).save_btn,
          onPressed: () {
            showErrors();
            if (areFieldsValid()) {
              if (widget.venmo) {
                getIt<PeerToPeerPaymentsCubit>().postPyments(
                    PeerToPeerPaymentsModel(venmoUser: _venmoController.text),
                    context);
              }
              if (widget.cashTag) {
                getIt<PeerToPeerPaymentsCubit>().postPyments(
                    PeerToPeerPaymentsModel(cashTag: _cashAppController.text),
                    context);
              }

              if (widget.payPal) {
                getIt<PeerToPeerPaymentsCubit>().postPyments(
                    PeerToPeerPaymentsModel(payPalEmail: _emailController.text),
                    context);
              }
            }
          },
          type: PrimaryButtonType.green,
        ),
      ),
    );
  }

  Widget _getBody() {
    return GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          _emailNode.unfocus();
          _venmoNode.unfocus();
          _cashAppNode.unfocus();
        },
        child: Stack(children: [
          LayoutBuilder(builder: (context, viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Visibility(
                            visible: widget.venmo,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Image.asset(
                                    'assets/images/venmo_title.png',
                                    scale: 3,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(S.of(context).venmo_sub_title,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          letterSpacing: 0.3,
                                          color:
                                              Palette.current.primaryWhiteSmoke,
                                        )),
                                const SizedBox(
                                  height: 16,
                                ),
                                CustomTextFormField(
                                    borderColor: _venmoBorder,
                                    errorText: venmoErrorText,
                                    autofocus: false,
                                    labelText: S.of(context).input_venmo,
                                    focusNode: _venmoNode,
                                    controller: _venmoController,
                                    inputType: TextInputType.text),
                              ],
                            )),
                        Visibility(
                            visible: widget.cashTag,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Image.asset(
                                    'assets/images/cash_app_title.png',
                                    scale: 3,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(S.of(context).cash_app_sub_title,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          letterSpacing: 0.3,
                                          color:
                                              Palette.current.primaryWhiteSmoke,
                                        )),
                                const SizedBox(
                                  height: 16,
                                ),
                                CustomTextFormField(
                                    borderColor: _cashAppBorder,
                                    errorText: cashAppErrorText,
                                    autofocus: false,
                                    labelText: S.of(context).input_cash_app,
                                    focusNode: _cashAppNode,
                                    controller: _cashAppController,
                                    inputType: TextInputType.text),
                              ],
                            )),
                        Visibility(
                            visible: widget.payPal,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Image.asset(
                                    'assets/images/payPal_title.png',
                                    scale: 3,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(S.of(context).payPal_sub_title,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          letterSpacing: 0.3,
                                          color:
                                              Palette.current.primaryWhiteSmoke,
                                        )),
                                const SizedBox(
                                  height: 20,
                                ),
                                CustomTextFormField(
                                    borderColor: _emailBorder,
                                    errorText: emailErrorText,
                                    autofocus: false,
                                    labelText: S.of(context).email,
                                    focusNode: _emailNode,
                                    controller: _emailController,
                                    inputType: TextInputType.emailAddress),
                              ],
                            )),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        ]));
  }

  void showErrors() {
    if (widget.payPal) {
      setState(() {
        emailErrorText = _emailController.text.isEmpty
            ? S.of(context).required_field
            : isValidEmail(_emailController.text)
                ? null
                : S.of(context).invalid_email;
      });
    }
    if (widget.cashTag) {
      setState(() {
        cashAppErrorText = _cashAppController.text.isEmpty
            ? S.of(context).required_field
            : isValidCashAppTag(_cashAppController.text)
                ? null
                : S.of(context).input_cash_app_ivalid;
      });
    }

    if (widget.venmo) {
      setState(() {
        venmoErrorText = _venmoController.text.isEmpty
            ? S.of(context).required_field
            : isValidVenmoUser(_venmoController.text)
                ? null
                : S.of(context).input_venmo_ivalid;
      });
    }
  }

  bool areFieldsValid() {
    if (widget.payPal) {
      return emailErrorText == null && _emailController.text.isNotEmpty;
    }
    if (widget.cashTag) {
      return cashAppErrorText == null && _cashAppController.text.isNotEmpty;
    }

    if (widget.venmo) {
      return venmoErrorText == null && _venmoController.text.isNotEmpty;
    }

    return false;
  }
}
