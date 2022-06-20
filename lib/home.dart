import 'package:flutter/material.dart';
import 'package:sticky_sliver/utils/toast.dart';
import 'package:sticky_sliver/widgets/CustomContainer.dart';
import 'package:sticky_sliver/widgets/sticky_sliver.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool value = false;
  TextStyle textStyle = const TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomContainer(
              isOdd: value,
            ),
          ),
          StickySliver(
            child: Container(
              color: Colors.amber,
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildTextButton('First'),
                  buildTextButton('Second'),
                  buildTextButton('Third'),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: CustomContainer(
              isOdd: !value,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomContainer(
              isOdd: value,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomContainer(
              isOdd: !value,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomContainer(
              isOdd: value,
            ),
          ),
        ],
      ),
    );
  }

  TextButton buildTextButton(String text) {
    return TextButton(
      onPressed: () {
        toggleBool();
        '$text Clicked'.toast;
      },
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }

  toggleBool() => setState(() => value = !value);
}
