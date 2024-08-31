import 'package:bookly/feature/home/view/widget/appBar_home.dart';
import 'package:bookly/feature/home/view/widget/newest_list.dart';
import 'package:bookly/feature/home/view/widget/feature_list.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const AppBarHome(),
              const FeatureList(),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  'Newest Books',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const NewestList(),
            ],
          ),
        ),
      ),
    );
  }
}
