import 'package:flutter/material.dart';
import 'package:realestate/models/item_model.dart';
import 'package:realestate/screens/detail_screen.dart';
import 'package:realestate/widgets/house_card.dart';

// ignore: must_be_immutable
class SuggestionList extends StatefulWidget {
  SuggestionList(this.title, this.items, {super.key});
  String? title;
  List<Item> items;

  @override
  State<SuggestionList> createState() => _SuggestionListState();
}

class _SuggestionListState extends State<SuggestionList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              TextButton(onPressed: () {}, child: Text("See All", )),
              // Icon(Icons.arrow_forward_rounded)
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            height: 340.0,
            width: double.infinity,

            // create a widget for the cards

            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.items.length,
              itemBuilder: (context, index) =>
                  ItemCard(widget.items[index], () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) =>
                    DetailScreen(widget.items[index])));
                  }),
            ),
          )
        ],
      ),
    );
  }
}
