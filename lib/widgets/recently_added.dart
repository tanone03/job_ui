import 'package:flutter/material.dart';
import '../models/jobs.dart';

class RecentlyAdded extends StatelessWidget {
  const RecentlyAdded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Recently added',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              width: 60,
                              height: 60,
                              child: Image.asset(
                                recentlyJobs[index]['image'],
                                fit: BoxFit.contain,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    recentlyJobs[index]['job'],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    recentlyJobs[index]['name'],
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                  ),
                                ]),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 10, right: 10),
                            color: Colors.yellow[200],
                            child: Text('\$${recentlyJobs[index]['price']}/h'),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (_, index) => const SizedBox(height: 10),
                itemCount: recentlyJobs.length,
              ),
            ),
            const SizedBox(height: 5)
          ],
        ),
      ),
    );
  }
}
