import 'package:flutter/material.dart';
import 'package:job_ui/widgets/job_offer.dart';
import 'package:job_ui/widgets/recently_added.dart';
import 'package:job_ui/widgets/search.dart';
import 'package:job_ui/widgets/text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {}),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          DiscoverText(),
          SizedBox(height: 5),
          SearchField(),
          JobOffer(),
          SizedBox(height: 20),
          RecentlyAdded(),
        ],
      ),
    );
  }
}
