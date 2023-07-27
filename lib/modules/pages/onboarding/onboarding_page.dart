import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/blocs/auth_bloc/auth_bloc.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/common/utils/utils.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int _page = 0;
  final pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      OnboardingTabPage(
        imagePath: "assets/images/onboarding_welcome.png",
        title: S.of(context).onboarding_welcome_title,
        description: S.of(context).onboarding_welcome_description,
      ),
      OnboardingTabPage(
        imagePath: "assets/images/onboarding_discover.png",
        title: S.of(context).onboarding_discover_title,
        description: S.of(context).onboarding_discover_description,
      ),
      OnboardingTabPage(
        imagePath: "assets/images/onboarding_swag.png",
        title: S.of(context).onboarding_swag_title,
        description: S.of(context).onboarding_swag_description,
      ),
      OnboardingTabPage(
        imagePath: "assets/images/onboarding_payment.png",
        title: S.of(context).onboarding_payment_title,
        description: S.of(context).onboarding_payment_description,
      ),
      OnboardingTabPage(
        imagePath: "assets/images/onboarding_atomic.png",
        title: S.of(context).onboarding_atomic_drops_title,
        description: S.of(context).onboarding_atomic_drops_description,
      ),
      OnboardingTabPage(
        imagePath: "assets/images/onboarding_kyc.png",
        title: S.of(context).onboarding_kyc_title,
        description: S.of(context).onboarding_kyc_description,
      ),
    ];
    return Scaffold(
      backgroundColor: Palette.current.black,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/onboarding_bg.png"),
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Image.asset(
                "assets/images/logo.png",
                width: 110,
              ),
              Expanded(
                child: PageView(
                  controller: pageController,
                  children: pages,
                  onPageChanged: (page) {
                    setState(() {
                      _page = page;
                    });
                  },
                ),
              ),
              (_page < pages.length - 1)
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        DotsIndicator(
                          length: pages.length,
                          selectedIndex: _page,
                        ),
                        const SizedBox(height: 20),
                        TextButton(
                          onPressed: finishOnboarding,
                          child: Text(
                            S.of(context).onboarding_skip_btn,
                            style: TextStyle(
                              color: Palette.current.primaryNeonGreen,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              letterSpacing: 0.24,
                            ),
                          ),
                        ),
                      ],
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: PrimaryButton(
                        title: S.of(context).onboarding_finish_btn,
                        type: PrimaryButtonType.green,
                        onPressed: finishOnboarding,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  void finishOnboarding() {
    context.read<AuthBloc>().add(const AuthEvent.finishedOnboarding());
  }
}

class OnboardingTabPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  const OnboardingTabPage({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 55),
        Image.asset(
          imagePath,
          height: 350,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 30),
        Text(
          title.toUpperCase(),
          style: TextStyle(
            color: Palette.current.primaryWhiteSmoke,
            fontSize: 44,
            fontWeight: FontWeight.w300,
            letterSpacing: 1.6,
            fontFamily: "KnockoutCustom",
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38),
          child: Text(
            description,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Palette.current.primaryWhiteSmoke,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.24,
                ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class DotsIndicator extends StatelessWidget {
  final int length;
  final int selectedIndex;
  const DotsIndicator({
    super.key,
    required this.length,
    required this.selectedIndex,
  })  : assert(selectedIndex >= 0),
        assert(length > 0),
        assert(selectedIndex < length);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Palette.current.primaryNero,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
          child: Row(
            children: List<Widget>.generate(
              length,
              (index) => Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == selectedIndex
                      ? Palette.current.primaryNeonGreen
                      : Palette.current.darkGray,
                ),
                width: 10,
                height: 10,
              ),
            )
                .separatedBy(() => const SizedBox(
                      width: 10,
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
