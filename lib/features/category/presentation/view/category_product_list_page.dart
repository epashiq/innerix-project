// import 'package:flutter/material.dart';
// import 'package:innerix_project/features/category/presentation/provider/category_provider.dart';
// import 'package:provider/provider.dart';

// class CategoryProductListPage extends StatefulWidget {
//   final int categoryId;
//   const CategoryProductListPage({super.key, required this.categoryId});

//   @override
//   State<CategoryProductListPage> createState() =>
//       _CategoryProductListPageState();
// }

// class _CategoryProductListPageState extends State<CategoryProductListPage> {
//   @override
//   void initState() {
//     super.initState();
//     final categoryProvider =
//         Provider.of<CategoryProvider>(context, listen: false);
//     WidgetsBinding.instance.addPostFrameCallback((_){
//       categoryProvider.fetchCategoryProducts(widget.categoryId);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final categoryProvider = Provider.of<CategoryProvider>(context);
//     return Scaffold(
//         appBar: AppBar(title: const Text('Category Products')),
//         body: categoryProvider.isLoading
//             ? const Center(child: CircularProgressIndicator())
//             : SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     if (categoryProvider
//                             .products.isNotEmpty
//                         )
//                       ListView.builder(
//                         itemCount: categoryProvider
//                             .products.length,
//                         itemBuilder: (context, index) {
//                           final product = categoryProvider
//                               .products[index];
//                           return Card(
//                             child: Column(
//                               children: [Text(product.name)],
//                             ),
//                           );
//                         },
//                       )
//                   ],
//                 ),
//               ));
//   }
// }



import 'package:flutter/material.dart';
import 'package:innerix_project/features/category/presentation/provider/category_provider.dart';
import 'package:provider/provider.dart';

class CategoryProductListPage extends StatefulWidget {
  final int categoryId;
  const CategoryProductListPage({super.key, required this.categoryId});

  @override
  State<CategoryProductListPage> createState() =>
      _CategoryProductListPageState();
}

class _CategoryProductListPageState extends State<CategoryProductListPage> {
  @override
  void initState() {
    super.initState();
    final categoryProvider =
        Provider.of<CategoryProvider>(context, listen: false);
    categoryProvider.fetchCategoryProducts(widget.categoryId);
  }

  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<CategoryProvider>(context);
    
    return Scaffold(
      appBar: AppBar(title: const Text('Category Products')),
      body: categoryProvider.isLoading && categoryProvider.products.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : NotificationListener<ScrollNotification>(
              onNotification: (scrollNotification) {
                if (!categoryProvider.isLoading &&
                    scrollNotification.metrics.pixels ==
                        scrollNotification.metrics.maxScrollExtent &&
                    categoryProvider.hasNextPage) {
                  // Load next page
                  categoryProvider.fetchCategoryProducts(
                    widget.categoryId,
                    isPaginated: true,
                  );
                }
                return true;
              },
              child: ListView.builder(
                itemCount: categoryProvider.products.length,
                itemBuilder: (context, index) {
                  final product = categoryProvider.products[index];
                  return Card(
                    child: ListTile(
                      title: Text(product.bestOffers[index].name),
                      subtitle: Text(product.bestOffers[index].description),
                    ),
                  );
                },
              ),
            ),
    );
  }
}

