import 'package:flutter/material.dart';
import 'package:greenmart/core/constants/app_assets.dart';
import 'package:greenmart/core/styles/app_colors.dart';
import 'package:greenmart/core/styles/text_styles.dart';
import 'package:greenmart/core/widgets/custom_svg_picture.dart';
import 'package:greenmart/features/home/data/product_model.dart';
import 'package:greenmart/features/home/widgets/all_products_builder.dart';
import 'package:greenmart/features/home/widgets/best_selling_builder.dart';
import 'package:greenmart/features/home/widgets/exclusive_offer_builder.dart';
import 'package:greenmart/features/home/widgets/home_search_bar.dart';
import 'package:greenmart/features/home/widgets/item_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomSvgPicture(
          path: AppAssets.logoSvg,
          height: 42,
          color: AppColors.primaryColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            HomeSearchBar(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Exclusive Offer', style: TextStyles.title),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'See All',
                          style: TextStyles.caption1.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 270,
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ItemCard(model: offerProducts[index]);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 20);
                    },
                    itemCount: offerProducts.length,
                  ),
                ),
              ],
            ),

            BestSellingBuilder(),
            AllProductsBuilder(),
          ],
        ),
      ),
    );
  }
}
