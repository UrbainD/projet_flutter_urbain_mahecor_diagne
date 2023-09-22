import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel/login_page.dart';

const h_blue = Color(0x1E90FF);


class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContactForm(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarSection(),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.grey[800],
          size: 20,
        ),
        onPressed: null,
      ),
      title: Text(
        'Xam Senegal',
        style: GoogleFonts.roboto(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.w800,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.person,
            color: const Color.fromARGB(255, 0, 0, 0),
            size: 20,
          ),
          onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage();
                        },
                      ),
                    );
                  },
        ),
      ],
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }
}



class ContactForm extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulaire de contact'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Mail',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: messageController,
              maxLines: 4,
              decoration: InputDecoration(
                labelText: 'Message',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                String email = emailController.text;
                String message = messageController.text;
              },
              child: Text('Envoyer'),
            ),
            SizedBox(height: 32.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.phone,
                    color: Color(0xFF5079FF),
                    size: 20,
                  ),
                  onPressed: null,
                ),
                IconButton(
                  icon: Icon(
                    Icons.facebook,
                    color: Color(0xFF5079FF),
                    size: 20,
                  ),
                  onPressed: null,
                ),
                IconButton(
                  icon: Icon(
                    Icons.twitter,
                    color: Color(0xFF5079FF),
                    size: 20,
                  ),
                  onPressed: null,
                ),
                IconButton(
                  icon: Icon(
                    Icons.linkedin,
                    color: Color(0xFF5079FF),
                    size: 20,
                  ),
                  onPressed: null,
                ),
                IconButton(
                  icon: Icon(
                    Icons.whatsapp,
                    color: Color(0xFF5079FF),
                    size: 20,
                  ),
                  onPressed: null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class BottomNavBarSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.grey[600],
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: h_blue,
          ),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_outline_rounded,
            color: h_blue,
          ),
          label: 'Tips',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: h_blue,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}