import 'package:flutter/material.dart';
import 'package:realestate/models/item_model.dart';

// ignore: must_be_immutable
class DetailScreen extends StatefulWidget {
   DetailScreen(this.item, {super.key});
  Item item;
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.green,),
        title: Text(
          widget.item.title!,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300.0,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(18.0),
                image: DecorationImage(
                  image: NetworkImage(widget.item.thumb_url!),
                  fit: BoxFit.cover,
                )
              ),
            ),
           const SizedBox(
              height: 10.0,
            ),
            Text(
              widget.item.category!,
              style: TextStyle(
                color: Colors.green.shade600,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              widget.item.title!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
              overflow: TextOverflow.ellipsis,
            ),
           const SizedBox(
              height: 8.0,
            ),
            Row(
              children: [
               const Icon(
                  Icons.location_on,
                  color: Colors.grey,
                ),
                Text(
                    widget.item.location!,
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                      "${widget
                      .item.price}\$ /Month",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 22.0,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    IconButton(onPressed: () {},
                     icon: const Icon(Icons.favorite_outline),
                     ),
              ],
            ),
            Expanded(child: Container()),
            Container(
              width: double.infinity,
              height: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: RawMaterialButton(
                onPressed: () {},
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                fillColor: Colors.green.shade600,
                child: const Text(
                  "Rent Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),),
              ),
            )
          ],
        ),
        ),
    );
  }
}