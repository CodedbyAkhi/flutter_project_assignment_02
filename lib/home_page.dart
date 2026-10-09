import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final appColor = const Color.fromARGB(255, 157, 170, 82);
    final bgColor = const Color(0xFFF7F8F1);

    return Scaffold(
      backgroundColor: bgColor,

      // AppBar
      appBar: AppBar(
        title: Text(
          "Homepage",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 21),
        ),
        backgroundColor: appColor,
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text("Search Clicked")));
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text("Settings Clicked")));
            },
            icon: const Icon(Icons.settings_outlined),
          ),
        ],
      ),

      // Drawer
      drawer: Drawer(
        backgroundColor: bgColor,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: appColor),
              accountName: Text(
                "Akhi",
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text("akhi01@gmail.com"),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 40, color: Color(0xFF9DAA52)),
              ),
            ),

            ListTile(
              leading: Icon(Icons.home, color: appColor),
              title: Text("Homepage", style: GoogleFonts.poppins()),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            const Divider(indent: 15, endIndent: 15),

            ListTile(
              leading: Icon(Icons.call, color: appColor),
              title: Text("Contact Me", style: GoogleFonts.poppins()),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text("Contact Me")));
              },
            ),

            const Divider(indent: 15, endIndent: 15),

            ListTile(
              leading: Icon(Icons.feedback_outlined, color: appColor),
              title: Text("Feedback", style: GoogleFonts.poppins()),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Give Your Feedback")),
                );
              },
            ),

            const Spacer(),

            Text(
              "Copyright © 2026",
              style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Hello! Welcome to my app")),
          );
        },
        backgroundColor: appColor,
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
        tooltip: "Message",
        child: const Icon(Icons.message_outlined),
      ),

      // Body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: appColor,
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    color: appColor.withAlpha(60),
                    blurRadius: 12,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.waving_hand, color: Colors.amber, size: 38),
                  const SizedBox(height: 12),
                  Text(
                    "Welcome to",
                    style: GoogleFonts.poppins(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "My Homepage!",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "A little space to learn and grow.",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            Text(
              "My Profile",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF33382B),
              ),
            ),

            const SizedBox(height: 12),

            Card(
              color: Colors.white,
              elevation: 2,
              shadowColor: appColor.withAlpha(40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(14),
                leading: CircleAvatar(
                  radius: 27,
                  backgroundColor: appColor.withAlpha(40),
                  child: Icon(Icons.person_outline, color: appColor, size: 32),
                ),
                title: Text(
                  "My Profile",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  "Welcome to my Flutter app",
                  style: GoogleFonts.poppins(fontSize: 12),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 17,
                  color: appColor,
                ),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Profile Clicked")),
                  );
                },
              ),
            ),

            const SizedBox(height: 28),

            Text(
              "Explore Buttons",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF33382B),
              ),
            ),

            const SizedBox(height: 14),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Cyan Button Clicked")),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.cyan.shade50,
                    foregroundColor: Colors.cyan.shade800,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    side: const BorderSide(color: Colors.cyan, width: 1.5),
                  ),
                  child: const Text("Cyan"),
                ),

                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Green Button Clicked")),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade600,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text("Green"),
                ),

                OutlinedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Blue Button Clicked")),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                    side: const BorderSide(color: Colors.blue),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text("Blue"),
                ),

                IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Alarm Clicked")),
                    );
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.orange.shade50,
                    foregroundColor: Colors.deepOrange,
                  ),
                  icon: const Icon(Icons.alarm),
                  tooltip: "Alarm",
                ),
              ],
            ),

            const SizedBox(height: 28),
            Text(
              "Keep Learning",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF33382B),
              ),
            ),

            const SizedBox(height: 12),

            Card(
              color: Colors.white,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(14),
                leading: CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.amber.shade50,
                  child: const Icon(
                    Icons.lightbulb_outline,
                    color: Colors.orange,
                    size: 30,
                  ),
                ),
                title: Text(
                  "Learning Flutter",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  "Learn something new every day!",
                  style: GoogleFonts.poppins(fontSize: 12),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 17,
                  color: appColor,
                ),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Keep Learning Flutter!")),
                  );
                },
              ),
            ),

            const SizedBox(height: 25),

            // Footer
            Center(
              child: Text(
                "Made with love using Flutter",
                style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
              ),
            ),

            const SizedBox(height: 75),
          ],
        ),
      ),
    );
  }
}
