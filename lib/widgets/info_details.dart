import 'package:flutter/material.dart';
import 'package:flutter_profile_screen/constants.dart';
import 'package:flutter_profile_screen/models/profile_completion_card.dart';

class InfoDetails extends StatelessWidget {
  const InfoDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
              'Complete your Profile',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '(1/5)',
              style: TextStyle(color: Colors.blue),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: List.generate(
              5,
              (index) => Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 6),
                      height: 7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: index == 0 ? Colors.blue : Colors.black12,
                      ),
                    ),
                  )),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 180,
          child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                ProfileCompletionCard card = profileCompilationCard[index];
                return SizedBox(
                  width: 160,
                  child: Card(
                    shadowColor: Colors.black54,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          card.icon,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          card.title,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              card.buttonText,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(
                    right: 5,
                  ),
                );
              },
              itemCount: 3),
        )
      ],
    );
  }
}
