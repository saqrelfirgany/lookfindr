import 'package:flutter/material.dart';
import 'package:lookfindr/features/main/home/home_screen/body/popular_list/popular_list_card.dart';

class HomePopularList extends StatelessWidget {
  const HomePopularList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        separatorBuilder: (context, index) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          /// ::: TODO: pass the necessary data from the live list
          return HomePopularListCard();
        },
      ),
    );
  }
}
