import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_screen/constants.dart';
import 'package:flutter_profile_screen/widgets/info_details.dart';
import 'package:flutter_profile_screen/widgets/main_details.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const MainDetails(),
          const SizedBox(
            height: 25,
          ),
          const InfoDetails(),
          const SizedBox(
            height: 15,
          ),
          ...List.generate(customListTile.length, (index) {
            final tile = customListTile[index];
            return Card(
              elevation: 4,
              shadowColor: Colors.black12,
              child: GestureDetector(
                onTap: () {
                  print('done');
                },
                child: ListTile(
                  title: Text(
                    tile.title,
                    style: TextStyle(
                      color: index == 3 ? Colors.red : Colors.black,
                    ),
                  ),
                  leading: Icon(
                    tile.leadingIcon,
                    color: index == 3 ? Colors.red : Colors.black,
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: index == 3 ? Colors.red : Colors.black,
                  ),
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
