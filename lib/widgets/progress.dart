import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:trackizer/utils/constants.dart';

Widget progressBar() {
  return Container(
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
                decoration: BoxDecoration(
                  gradient: gradient,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    margin: const EdgeInsets.all(0.5),
                    decoration: BoxDecoration(
                      color: subsColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: Text(
                        "See your budget",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
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
  );
}
