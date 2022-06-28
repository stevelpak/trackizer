import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:trackizer/utils/constants.dart';
import 'package:trackizer/widgets/button_services.dart';
import 'package:trackizer/widgets/button_subs.dart';

class Trackizer extends StatefulWidget {
  const Trackizer({Key? key}) : super(key: key);

  @override
  State<Trackizer> createState() => _TrackizerState();
}

class _TrackizerState extends State<Trackizer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ConvexAppBar(
          items: const [
            TabItem(icon: Icons.home),
            TabItem(icon: Icons.menu),
            TabItem(icon: Icons.add),
            TabItem(icon: Icons.calendar_month_outlined),
            TabItem(icon: Icons.credit_card),
          ],
          backgroundColor: botColor,
        ),
      ),
      backgroundColor: bgDown,
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 2.0,
                        decoration: BoxDecoration(
                          color: bgUp,
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(24),
                            bottomLeft: Radius.circular(24),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  subsButton("Active Subs", "12"),
                                  subsButton("Highest Subs", "\$19.99"),
                                  subsButton("Lowest Subs", "\$5.99"),
                                ],
                              )
                            ],
                          ),
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 25,
                  ),
                  child: Column(
                    children: [
                      servicesButton("spotify", "Spotify", 5.99),
                      servicesButton("yt", "YouTube Premium", 18.99),
                      servicesButton("onedrive", "Microsoft OneDrive", 29.99),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
