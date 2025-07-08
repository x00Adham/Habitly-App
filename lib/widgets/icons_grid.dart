import 'package:flutter/material.dart';
import 'package:habitly/constants/icon_name_list.dart';
import 'package:habitly/widgets/my_circular_icon.dart';

class IconsGrid extends StatefulWidget {
  const IconsGrid({super.key});

  @override
  State<IconsGrid> createState() => _IconsGridState();
}

class _IconsGridState extends State<IconsGrid> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          childAspectRatio: 1,
        ),
        itemCount: iconname.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color:
                        selectedIndex == index
                            ? iconcolors[index]
                            : Colors.transparent,
                    width: 2,
                  ),
                  shape: BoxShape.circle,
                ),
                child: MyCircleIcon(name: iconname[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
