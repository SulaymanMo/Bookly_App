import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> _slidingUp;
  late AnimationController _controller;

  @override
  initState() {
    super.initState();
    _animateUp();
    navigateHome();
  }

  void _animateUp() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _slidingUp = Tween<Offset>(
      begin: const Offset(0, 2),
      end: const Offset(0, 0),
    ).animate(_controller);
    _controller.forward();
  }

  void navigateHome() {
    Future.delayed(
        const Duration(
          seconds: 3,
        ), () {
      GoRouter.of(context).push('/home_view');
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/images/logo.png', height: 58),
          const SizedBox(height: 10),
          AnimatedBuilder(
            animation: _slidingUp,
            builder: (context, _) {
              return SlideTransition(
                position: _slidingUp,
                child: const Text(
                  'Excellent Read Experience.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 0.5,
                    color: Colors.green,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
