import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final titlleStyle = Theme.of(context).textTheme.titleMedium;
    return SafeArea(
      child: Container(
        height: 50,
        color: Colors.white30,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Icon(
                  Icons.movie_outlined,
                  color: colors.secondary,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text('Cinemapedia ', style: titlleStyle),
                const Spacer(),
                IconButton(onPressed: () {}, icon: const Icon(Icons.search))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
