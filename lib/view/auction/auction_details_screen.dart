import 'package:flutter/material.dart';

class AuctionDetailsScreen extends StatefulWidget {
  const AuctionDetailsScreen({super.key});

  @override
  State<AuctionDetailsScreen> createState() => _AuctionDetailsScreenState();
}

class _AuctionDetailsScreenState extends State<AuctionDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              size: 22,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        title: const Text("Auction"),
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
