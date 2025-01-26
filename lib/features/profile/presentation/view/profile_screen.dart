// import 'package:flutter/material.dart';
// import 'package:innerix_project/features/profile/presentation/provider/profile_provider.dart';
// import 'package:provider/provider.dart';

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final profileProvider = Provider.of<ProfileProvider>(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Profile'),
//       ),
//       body: profileProvider.isLoading
//           ? const Center(child: CircularProgressIndicator())
//           : profileProvider.errorMessage != null
//               ? Center(child: Text('Error: ${profileProvider.errorMessage}'))
//               : profileProvider.user == null
//                   ? Center(
//                       child: ElevatedButton(
//                         onPressed: () {
//                           profileProvider.fetchUserProfile();
//                         },
//                         child: const Text('Fetch Profile'),
//                       ),
//                     )
//                   : Padding(
//                       padding: const EdgeInsets.all(16.0),
//                       child: Center(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Center(
//                                 child: const CircleAvatar(
//                               radius: 50,
//                             )),
//                             Text(
//                               'Name: ${profileProvider.user?.name ?? ''}',
//                               style: const TextStyle(fontSize: 18),
//                             ),
//                             const SizedBox(height: 8),
//                             Text(
//                               'Email: ${profileProvider.user?.email ?? ''}',
//                               style: const TextStyle(fontSize: 18),
//                             ),
//                             const SizedBox(height: 8),
//                             Text(
//                               'Phone: ${profileProvider.user?.phoneNumber ?? ''}',
//                               style: const TextStyle(fontSize: 18),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:innerix_project/features/profile/presentation/provider/profile_provider.dart';
import 'package:innerix_project/features/profile/presentation/view/edit_profile_screen.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final profileProvider = Provider.of<ProfileProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: profileProvider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : profileProvider.errorMessage != null
              ? Center(child: Text('Error: ${profileProvider.errorMessage}'))
              : profileProvider.user == null
                  ? Center(
                      child: ElevatedButton(
                        onPressed: () {
                          profileProvider.fetchUserProfile();
                        },
                        child: const Text('Fetch Profile'),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Center(
                            child: CircleAvatar(
                              radius: 50,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Name: ${profileProvider.user?.name ?? ''}',
                            style: const TextStyle(fontSize: 18),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Email: ${profileProvider.user?.email ?? ''}',
                            style: const TextStyle(fontSize: 18),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Phone: ${profileProvider.user?.phoneNumber ?? ''}',
                            style: const TextStyle(fontSize: 18),
                          ),
                          const SizedBox(height: 16),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const EditProfileScreen(),
                                  ),
                                );
                              },
                              child: const Text('Edit Profile'),
                            ),
                          ),
                        ],
                      ),
                    ),
    );
  }
}

