import 'package:flutter/material.dart';
import '../../common/color_extension.dart';
import '../../common_widget/fiter_row.dart';
import '../../common_widget/round_buttom.dart';
import 'price_view.dart';

class FilterView extends StatefulWidget {
  const FilterView({super.key});

  @override
  State<FilterView> createState() => _FilterViewState();
}

class _FilterViewState extends State<FilterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.white,
      appBar: AppBar(
        backgroundColor: TColor.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              "assets/img/back.png",
              width: 20,
              height: 20,
              color: TColor.secondaryText,
            )),
        title: Text(
          "Filter",
          style: TextStyle(color: TColor.primaryText, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                  color: TColor.white,
                  borderRadius: BorderRadius.circular(3),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(0, 2))
                  ]),
              child: Column(
                children: [
                  FilterRow(
                    title: "Gender",
                    value: "All",
                    onPressed: () {},
                  ),
                  FilterRow(
                    title: "Product Type",
                    value: "All",
                    onPressed: () {},
                  ),
                  FilterRow(
                    title: "Style",
                    value: "All",
                    onPressed: () {},
                  ),
                  FilterRow(
                    title: "Leather/ Non Leather",
                    value: "All",
                    onPressed: () {},
                  ),
                  FilterRow(
                    title: "Color",
                    value: "All",
                    onPressed: () {},
                  ),
                  FilterRow(
                    title: "Brand",
                    value: "All",
                    onPressed: () {},
                  ),
                  FilterRow(
                    title: "Body fit",
                    value: "All",
                    onPressed: () {},
                  ),
                  FilterRow(
                    title: "Size",
                    value: "All",
                    onPressed: () {},
                  ),
                  FilterRow(
                    title: "Price",
                    value: "\$8-\$361",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PriceView()));
                    },
                  ),
                ],
              ),
            ),
          )),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RoundButton(title: "View Items", onPressed: () {}),
          )
        ],
      ),
    );
  }
}
