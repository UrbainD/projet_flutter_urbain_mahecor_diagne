import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const h_blue = Color(0x1E90FF);


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AuthPage(),
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
      
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }
}

class AuthPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Authentification'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Mot de passe'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: confirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Confirmer le mot de passe'),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                // Obtenez les valeurs saisies par l'utilisateur
                String email = emailController.text;
                String password = passwordController.text;
                String confirmPassword = confirmPasswordController.text;

                // Vérifiez si les champs ne sont pas vides et si les mots de passe correspondent
                if (email.isNotEmpty && password.isNotEmpty && confirmPassword.isNotEmpty) {
                  if (password == confirmPassword) {
                    // Les mots de passe correspondent, vous pouvez effectuer l'inscription ici
                    print('Inscription réussie !');
                    print('Email: $email');
                    print('Mot de passe: $password');
                  } else {
                    // Les mots de passe ne correspondent pas
                    print('Les mots de passe ne correspondent pas.');
                  }
                } else {
                  // Tous les champs ne sont pas remplis
                  print('Veuillez remplir tous les champs.');
                }
              },
              child: Text('Créer un compte'),
            ),
            SizedBox(height: 16.0),
            Center(
              child: Text(
                "Si vous avez déjà un compte, cliquez ici pour vous connecter.",
                style: TextStyle(color: Colors.blue),
              ),
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