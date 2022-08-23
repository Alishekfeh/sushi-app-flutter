import 'package:flutter/material.dart';
class buildSearch extends StatelessWidget {
  const buildSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade700,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: TextField(
          decoration: InputDecoration(
            icon: Icon(Icons.search,color: Colors.grey.shade400,),
              border: InputBorder.none,
              hintText: "Search your sushi"

          ),
        ),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}