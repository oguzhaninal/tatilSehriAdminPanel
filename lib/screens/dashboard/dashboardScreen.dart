import 'package:adminpanel/screens/dashboard/components/header.dart';
import 'package:flutter/material.dart';

import 'components/areaPhotos.dart';
import 'components/infoArea.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Header(),
              SizedBox(height: 16),
              Container(
                width: s.width - 336,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        AreaPhotos(),
                        SizedBox(height: 16),
                        InfoArea(),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
