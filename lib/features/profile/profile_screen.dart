import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.teal[50],

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuNhTZJTtkR6b-ADMhmzPvVwaLuLdz273wvQ&s"), // Add your image in assets
              ),
              const SizedBox(height: 10),
              const Text(
                'Jon Möller',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Stockholm, Sweden',
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Visual Designer',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'Upgrade Now - Go Pro',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 30),
              const SettingsSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsSection extends StatelessWidget {
  const SettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingsTile(
          icon: Icons.dark_mode,
          title: 'Dark Mode',
          trailing: Switch(value: false, onChanged: (value) {}),
        ),
        SettingsTile(
          icon: Icons.notifications,
          title: 'Notifications',
          trailing: Text(
            'On',
            style: TextStyle(color: Colors.grey[700]),
          ),
        ),
        const SettingsTile(
          icon: Icons.lock,
          title: 'Privacy',
        ),
        const SettingsTile(
          icon: Icons.security,
          title: 'Security',
        ),
        const SettingsTile(
          icon: Icons.person,
          title: 'Account',
        ),
        const SettingsTile(
          icon: Icons.help,
          title: 'Help',
        ),
        const SettingsTile(
          icon: Icons.info,
          title: 'About',
        ),
      ],
    );
  }
}

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget? trailing;

  const SettingsTile({
    super.key,
    required this.icon,
    required this.title,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Theme.of(context).colorScheme.primary,),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      trailing: trailing ?? const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}
