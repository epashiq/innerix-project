

// import 'package:flutter/material.dart';
// import 'package:innerix_project/features/category/presentation/view/category_product_list_page.dart';
// import 'package:innerix_project/features/home/presentation/provider.dart/home_provider.dart';
// import 'package:provider/provider.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   void initState() {
//     super.initState();
//     final homeProvider = Provider.of<HomeProvider>(context, listen: false);

//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       homeProvider.fetchHomePage();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final homeProvider = Provider.of<HomeProvider>(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Screen'),
//         actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.logout))],
//       ),
//       body: homeProvider.isLoading
//           ? const Center(child: CircularProgressIndicator())
//           : SingleChildScrollView(
//               child: Padding(
//                 padding: const EdgeInsets.all(16),
//                 child: Column(
//                   children: [
//                     if (homeProvider.apiResponse?.bestOffers.isNotEmpty ??
//                         false)
//                       CarouselSlider.builder(
//                         itemCount:
//                             homeProvider.apiResponse?.categories.length ?? 0,
//                         itemBuilder: (context, index, realIndex) {
//                           final offer =
//                               homeProvider.apiResponse?.bestOffers[index];
//                           return ClipRRect(
//                             borderRadius: BorderRadius.circular(8),
//                             child: Column(
//                               children: [
//                                 offer?.thumbnailImage != null
//                                     ? Image.network(
//                                         offer!.thumbnailImage!,
//                                         fit: BoxFit.cover,
//                                       )
//                                     : Container(
//                                         color: Colors.grey,
//                                         height: 150,
//                                         width: MediaQuery.sizeOf(context).width,
//                                         child: const Icon(Icons.image),
//                                       ),
//                                 Text(offer?.name ?? ''),
//                                 Text(offer?.description ?? ''),
//                               ],
//                             ),
//                           );
//                         },
//                         options: CarouselOptions(
//                           height: 250,
//                           enlargeCenterPage: true,
//                           autoPlay: true,
//                           aspectRatio: 16 / 9,
//                           viewportFraction: 0.8,
//                         ),
//                       ),

//                     if (homeProvider.apiResponse?.categories.isNotEmpty ??
//                         false)
//                       GridView.builder(
//                         gridDelegate:
//                             const SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 2,
//                           mainAxisSpacing: 10,
//                           crossAxisSpacing: 10,
//                           childAspectRatio: 2,
//                         ),
//                         shrinkWrap: true,
//                         itemCount:
//                             homeProvider.apiResponse?.categories.length ?? 0,
//                         itemBuilder: (context, index) {
//                           final category =
//                               homeProvider.apiResponse?.categories[index];
//                           return InkWell(
//                             onTap: () {
//                               Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) =>
//                                     CategoryProductListPage(
//                                   categoryId: category?.categoryId ?? 0,
//                                 ),
//                               ));
//                             },
//                             child: Card(
//                               elevation: 4,
//                               margin: const EdgeInsets.all(8),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text(
//                                     category?.categoryName ?? '',
//                                     textAlign: TextAlign.center,
//                                     style: const TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   category?.categoryImage != null
//                                       ? Image.network(category!.categoryImage!)
//                                       : const Text('No image'),
//                                 ],
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                   ],
//                 ),
//               ),
//             ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:innerix_project/features/category/presentation/view/category_product_list_page.dart';
import 'package:innerix_project/features/home/presentation/provider.dart/home_provider.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    final homeProvider = Provider.of<HomeProvider>(context, listen: false);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      homeProvider.fetchHomePage();
    });
  }

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.logout))],
      ),
      body: homeProvider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    if (homeProvider.apiResponse?.bestOffers.isNotEmpty ?? false)
                      CarouselSlider.builder(
                        itemCount: homeProvider.apiResponse?.bestOffers.length ?? 0,
                        itemBuilder: (context, index, realIndex) {
                          final offer = homeProvider.apiResponse?.bestOffers.isNotEmpty ?? false
                              ? homeProvider.apiResponse!.bestOffers[index]
                              : null;

                          if (offer == null) return SizedBox(); // Prevent out-of-bounds errors

                          return ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Column(
                              children: [
                                offer.thumbnailImage != null
                                    ? Image.network(
                                        offer.thumbnailImage!,
                                        fit: BoxFit.cover,
                                      )
                                    : Container(
                                        color: Colors.grey,
                                        height: 150,
                                        width: MediaQuery.sizeOf(context).width,
                                        child: const Icon(Icons.image),
                                      ),
                                Text(offer.name ),
                                Text(offer.description ),
                              ],
                            ),
                          );
                        },
                        options: CarouselOptions(
                          height: 250,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          viewportFraction: 0.8,
                        ),
                      ),

                    if (homeProvider.apiResponse?.categories.isNotEmpty ?? false)
                      GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 2,
                        ),
                        shrinkWrap: true,
                        itemCount: homeProvider.apiResponse?.categories.length ?? 0,
                        itemBuilder: (context, index) {
                          final category = homeProvider.apiResponse?.categories[index];
                          
                          if (category == null) return SizedBox(); // Prevent out-of-bounds errors

                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      CategoryProductListPage(
                                    categoryId: category.categoryId,
                                  ),
                                ),
                              );
                            },
                            child: Card(
                              elevation: 4,
                              margin: const EdgeInsets.all(8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    category.categoryName ,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  category.categoryImage != null
                                      ? Image.network(category.categoryImage!)
                                      : const Text('No image'),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                  ],
                ),
              ),
            ),
    );
  }
}

