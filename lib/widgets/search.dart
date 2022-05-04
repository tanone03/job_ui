import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
              child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
                padding: const EdgeInsets.only(left: 20),
                color: Colors.white.withOpacity(0.4),
                child: const TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    icon: Icon(Icons.search, color: Colors.white),
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                )),
          )),
          const SizedBox(width: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 48,
              height: 48,
              color: Colors.yellow[200],
              child: IconButton(
                  icon: const Icon(
                    Icons.article_sharp,
                  ),
                  onPressed: () {}),
            ),
          ),
        ],
      ),
    );
  }
}
