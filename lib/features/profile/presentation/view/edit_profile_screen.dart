import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:innerix_project/features/profile/presentation/provider/profile_provider.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final profileProvider = Provider.of<ProfileProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: profileProvider.nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: profileProvider.emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: profileProvider.phoneController,
              decoration: const InputDecoration(labelText: 'Phone'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                await profileProvider.updateUserProfile(
                  profileProvider.nameController.text,
                  profileProvider.emailController.text,
                  profileProvider.phoneController.text,
                );

                if (profileProvider.errorMessage == null) {
                  Navigator.pop(context);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(profileProvider.errorMessage!),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
              child: const Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}
