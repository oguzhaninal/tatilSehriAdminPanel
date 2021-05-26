import 'package:adminpanel/config/colors.dart';
import 'package:adminpanel/config/items.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AreaPhotos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1100,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Otel Adı",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              ElevatedButton.icon(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                ),
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text("Yeni Fotoğraf Ekle"),
              ),
            ],
          ),
          SizedBox(height: 16),
          Container(
            width: 1100,
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageUrls.length,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 300,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(
                            imageUrls[index],
                          ),
                          fit: BoxFit.cover),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
