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
                SizedBox(height: 30,),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuNhTZJTtkR6b-ADMhmzPvVwaLuLdz273wvQ&s"), // Add your image in assets
              ),
              SizedBox(height: 10),
              Text(
                'Jon Möller',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Stockholm, Sweden',
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Visual Designer',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Upgrade Now - Go Pro',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 30),
              SettingsSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsSection extends StatelessWidget {
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
        SettingsTile(
          icon: Icons.lock,
          title: 'Privacy',
        ),
        SettingsTile(
          icon: Icons.security,
          title: 'Security',
        ),
        SettingsTile(
          icon: Icons.person,
          title: 'Account',
        ),
        SettingsTile(
          icon: Icons.help,
          title: 'Help',
        ),
        SettingsTile(
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
    required this.icon,
    required this.title,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.pink),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      trailing: trailing ?? Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}