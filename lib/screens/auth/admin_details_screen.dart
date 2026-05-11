import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../config/theme.dart';

class AdminDetailsScreen extends StatelessWidget {
  const AdminDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Details'),
        backgroundColor: AppTheme.primaryBlue,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              const Icon(
                Icons.admin_panel_settings,
                size: 80,
                color: AppTheme.primaryBlue,
              ),
              const SizedBox(height: 24),
              const Text(
                'Contact Administrator',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.primaryBlue,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'If you are a guest user or need to register a new account, please contact our administrator using the options below.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: AppTheme.textGrey,
                ),
              ),
              const SizedBox(height: 40),
              _buildContactCard(
                context,
                icon: Icons.phone,
                title: 'Call Admin',
                subtitle: '+91 9876543210',
                onTap: () => _launchUrl('tel:+919876543210'),
              ),
              const SizedBox(height: 16),
              _buildContactCard(
                context,
                icon: Icons.email,
                title: 'Email Admin',
                subtitle: 'support@shreesirohi.com',
                onTap: () => _launchUrl('mailto:support@shreesirohi.com'),
              ),
              const SizedBox(height: 16),
              _buildContactCard(
                context,
                icon: Icons.chat,
                title: 'WhatsApp Admin',
                subtitle: '+91 9876543210',
                onTap: () => _launchUrl('https://wa.me/919876543210'),
              ),
              const SizedBox(height: 40),
              const Card(
                elevation: 0,
                color: Color(0xFFF5F7FA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'How to Register?',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.textDark,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '1. Reach out to the admin via any of the contact methods above.\n'
                        '2. Provide your basic details (Name, Mobile, etc.).\n'
                        '3. Once verified, the admin will create your account.\n'
                        '4. You will receive an OTP to set your password and login.',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppTheme.textDark,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContactCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppTheme.primaryBlue.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: AppTheme.primaryBlue),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: AppTheme.textGrey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 16, color: AppTheme.textGrey),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      debugPrint('Could not launch $url');
    }
  }
}
