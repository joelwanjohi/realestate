import 'package:flutter/material.dart';
import 'package:realestate/models/item_model.dart';

// ignore: must_be_immutable
class ItemCard extends StatefulWidget {
  ItemCard(this.item, this.onTap, {super.key});
  Item item;

  Function()? onTap;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      margin: const EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        color: const Color(0xfcf9f8),
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: InkWell(
        onTap: widget.onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 150.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.grey.shade200,
                  image: DecorationImage(
                    image: NetworkImage(widget.item.thumb_url!),
                    fit: BoxFit.cover,
                  )),
            ),
           const SizedBox(
              height: 10.0,
            ),
            Text(
              widget.item.category!,
              style: TextStyle(color: Colors.green.shade600,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              widget.item.title!,
              style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
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
                height: 20.0,
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
                 )
          ],
        ),
      ),
    );
  }
}
