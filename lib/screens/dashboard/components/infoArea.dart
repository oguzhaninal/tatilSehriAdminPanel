import 'package:adminpanel/config/colors.dart';
import 'package:adminpanel/models/infoModel.dart';
import 'package:flutter/material.dart';

class InfoArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1100,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: MainColors.secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Otel Bilgileri",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              horizontalMargin: 0,
              columnSpacing: 16,
              columns: [
                DataColumn(
                  label: Text("Otel Bilgisi"),
                ),
                DataColumn(
                  label: Text("Otel Bilgisi"),
                ),
                DataColumn(
                  label: Text("Otel Bilgisi"),
                ),
              ],
              rows: List.generate(
                infos.length,
                (index) => recentInfoDataRow(infos[index]),
              ),
            ),
          )
        ],
      ),
    );
  }
}

DataRow recentInfoDataRow(RecentInfo fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            fileInfo.icon,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(fileInfo.title),
            ),
          ],
        ),
      ),
      DataCell(Text(fileInfo.date)),
      DataCell(Text(fileInfo.size)),
    ],
  );
}
