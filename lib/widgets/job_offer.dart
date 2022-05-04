import 'package:flutter/material.dart';
import '../models/jobs.dart';

class JobOffer extends StatelessWidget {
  const JobOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text('For you',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
        ),
        const SizedBox(height: 20),
        SizedBox(
            height: 180,
            child: ListView.separated(
              padding: const EdgeInsets.only(left: 20, right: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(20),
                  width: 260,
                  decoration: BoxDecoration(
                    color: jobs[index]['color'],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox(
                                width: 60,
                                height: 60,
                                child: Image.asset(jobs[index]['image'],
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  jobs[index]['time'],
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ))
                          ],
                        ),
                        const SizedBox(height: 25),
                        Text(jobs[index]['job'],
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                        Text('\$' + jobs[index]['price'].toString() + '/h'),
                      ]),
                );
              },
              separatorBuilder: (_, index) => const SizedBox(width: 20),
              itemCount: jobs.length,
            )),
      ],
    );
  }
}
