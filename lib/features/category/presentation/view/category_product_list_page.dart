// // import 'package:flutter/material.dart';
// // import 'package:innerix_project/features/category/presentation/provider/category_provider.dart';
// // import 'package:provider/provider.dart';

// // class CategoryProductListPage extends StatefulWidget {
// //   final int categoryId;
// //   const CategoryProductListPage({super.key,required this.categoryId});

// //   @override
// //   State<CategoryProductListPage> createState() => _CategoryProductListPageState();
// // }

// // class _CategoryProductListPageState extends State<CategoryProductListPage> {
// //   @override
// //   Widget build(BuildContext context) {

// //     final categoryProvider = Provider.of<CategoryProvider>(context);
// //     return Scaffold(
// //      appBar: AppBar(),
// //      body: FutureBuilder(future: categoryProvider.fetchChCategory(widget.categoryId), builder: (context, snapshot) {
// //        if(snapshot.connectionState== ConnectionState.waiting){
// //         return const CircularProgressIndicator();
// //        }else if(snapshot.hasError){
// //          return const Text('no data');
// //        }else{
// //         ListView.builder(
// //           itemCount: snapshot.data.,
// //           itemBuilder: (context, index) {
// //           return Card();
// //         },);
// //        }
// //      },),
// //     );
// //   }
// // }


// import 'package:flutter/material.dart';
// import 'package:innerix_project/features/category/data/model/category_model.dart';
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
//   Widget build(BuildContext context) {
//     final categoryProvider = Provider.of<CategoryProvider>(context);
    
//     return Scaffold(
//       appBar: AppBar(title: const Text('Category Products')),
//       body: FutureBuilder<CategoryResponse>(
//         future: categoryProvider.fetchChCategory(widget.categoryId),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (snapshot.hasData) {
//             final categoryResponse = snapshot.data;
//             if (categoryResponse != null && categoryResponse.products.isNotEmpty) {
//               return ListView.builder(
//                 itemCount: categoryResponse.data.,
//                 itemBuilder: (context, index) {
//                   final product = categoryResponse.products[index];
//                   return Card(
//                     child: ListTile(
//                       title: Text(product.name),
//                       subtitle: Text(product.description),
//                       trailing: Text('\$${product.price}'),
//                     ),
//                   );
//                 },
//               );
//             } else {
//               return const Center(child: Text('No products available.'));
//             }
//           } else {
//             return const Center(child: Text('No data available.'));
//           }
//         },
//       ),
//     );
//   }
// }
