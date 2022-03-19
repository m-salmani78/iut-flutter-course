import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          splashRadius: 24,
          icon: const Icon(Icons.chevron_left_rounded),
        ),
        title: const Text('Profile'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            _buildProfilePic(),
            const SizedBox(height: 16),
            const Text(
              'Mahdi Salmani',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('+98 912 345 6789'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Edit Profile'),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(height: 16),
            _buildItems(
                icon: const Icon(Icons.person), title: const Text('Profile')),
            _buildItems(
                icon: const Icon(Icons.notifications),
                title: const Text('Notifications')),
            _buildItems(
                icon: const Icon(Icons.settings),
                title: const Text('Settings')),
            _buildItems(
                icon: const Icon(Icons.logout), title: const Text('Log Out')),
          ],
        ),
      ),
    );
  }

  Widget _buildProfilePic() {
    return Stack(
      children: [
        const CircleAvatar(
          radius: 60,
          backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVLqfekg_kitC_QJ5kgBUTh2tt5EIcxEnQDQ&usqp=CAU'),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: FloatingActionButton(
            mini: true,
            onPressed: () {},
            child: const Icon(Icons.camera_alt),
          ),
        ),
      ],
    );
  }

  Widget _buildItems({required Widget icon, required Widget title}) {
    return Card(
      elevation: 4.0,
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        onTap: () {},
        leading: icon,
        iconColor: Colors.black,
        title: title,
        trailing: const Icon(Icons.chevron_right_rounded),
      ),
    );
  }
}
