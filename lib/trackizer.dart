import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:trackizer/utils/constants.dart';
import 'package:trackizer/widgets/button_services.dart';
import 'package:trackizer/widgets/button_subs.dart';
import 'package:trackizer/widgets/on_off_button.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Trackizer extends StatefulWidget {
  const Trackizer({Key? key}) : super(key: key);

  @override
  State<Trackizer> createState() => _TrackizerState();
}

class _TrackizerState extends State<Trackizer>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    final curverAnimation = CurvedAnimation(
        parent: animationController, curve: Curves.easeInOutCubicEmphasized);

    animation = Tween<double>(begin: 0.0, end: 3.14).animate(curverAnimation)
      ..addListener(() {
        setState(() {});
      });
    animationController.repeat(reverse: false);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: ConvexAppBar(
          items: const [
            TabItem(icon: Icons.home),
            TabItem(icon: Icons.menu),
            TabItem(icon: Icons.add),
            TabItem(icon: Icons.calendar_month_outlined),
            TabItem(icon: Icons.credit_card),
          ],
          backgroundColor: botColor,
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
                                Container(
                                  child: SfRadialGauge(
                                    enableLoadingAnimation: true,
                                    axes: <RadialAxis>[
                                      RadialAxis(
                                        showTicks: false,
                                        labelFormat: "º",
                                        ranges: <GaugeRange>[
                                          GaugeRange(
                                            startValue: 0,
                                            endValue: 85,
                                            color: const Color(0xFFFF7966),
                                          ),
                                        ],
                                        annotations: <GaugeAnnotation>[
                                          GaugeAnnotation(
                                            widget: Container(
                                              child: const Text(
                                                '\$1,235',
                                                style: TextStyle(
                                                  fontSize: 40,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            positionFactor: 0,
                                          ),
                                          GaugeAnnotation(
                                            widget: Container(
                                              child: Text(
                                                'This months bills',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: textColor,
                                                ),
                                              ),
                                            ),
                                            angle: 90,
                                            positionFactor: 0.3,
                                          ),
                                          GaugeAnnotation(
                                            widget: Container(
                                              child: const Text(
                                                'TRACKIZER',
                                                style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            angle: -90,
                                            positionFactor: 0.5,
                                          ),
                                          GaugeAnnotation(
                                            widget: Container(
                                              decoration: BoxDecoration(
                                                gradient: gradient,
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Container(
                                                  margin:
                                                      const EdgeInsets.all(0.5),
                                                  decoration: BoxDecoration(
                                                    color: subsColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  child: const Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10,
                                                            horizontal: 15),
                                                    child: Text(
                                                      "See your budget",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            angle: 90,
                                            positionFactor: 0.7,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
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
                        onOffButton(),
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
      ),
    );
  }
}
