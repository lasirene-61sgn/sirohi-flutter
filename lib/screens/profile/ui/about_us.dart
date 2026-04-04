import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../notifier/profile_notifier.dart';

class AboutUsScreen extends ConsumerStatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends ConsumerState<AboutUsScreen> {

  @override
  void initState() {
    super.initState();
    Future.microtask(() =>
        ref.read(profileNotifierProvider.notifier).loadAboutUS());
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(profileNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
      ),
      body: state.isLoading && state.aboutUs == null
          ? const Center(child: CircularProgressIndicator())
          : state.error != null
          ? Center(child: Text(state.error!))
          : state.aboutUs == null
          ? const Center(child: Text("No data available"))
          : SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: SafeArea(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// Description
              const Text(
                "Description",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(state.aboutUs?.description ?? "N/A"),

              const SizedBox(height: 24),

              /// Vision
              const Text(
                "Vision",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(state.aboutUs?.vision ?? "N/A"),

              const SizedBox(height: 24),

              /// Mission
              const Text(
                "Mission",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(state.aboutUs?.mission ?? "N/A"),
            ],
          ),
        ),
      ),
    );
  }
}