import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:mekandayiz/screens/welcomeScreen.dart';
import 'package:mekandayiz/widget/responsive.dart';

TextEditingController passwordController = TextEditingController();
TextEditingController emailController = TextEditingController();

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;
  bool showPassword = false; // Eklenen satır

  void login(String email, String password, BuildContext context) async {
    try {
      Response response = await post(
        Uri.parse('https://reqres.in/api/register'), // Giriş endpoint'i
        body: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        print('Giriş Başarılı');
        // Başarılı giriş durumunda welcome sayfasına geçiş yap
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => welcomeScreen()),
        );
        print("E-posta: $email, Şifre $password");
      } else {
        showSnackBar(
          context,
          'Girdiğiniz Bilgiler Hatalı. Lütfen Tekrar Deneyin..',
          Colors.pink,
        );
      }
    } catch (e) {
      print(e.toString());
    }
  }

  void showSnackBar(
      BuildContext context, String message, Color backgroundColor) {
    final snackBar = SnackBar(
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            message,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ],
      ),
      backgroundColor: backgroundColor,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Screen device2 = Screen.mobile;

  @override
  Widget build(BuildContext context) {
    device2 = detectScreen(MediaQuery.of(context).size);

    drawScreen2() {
      switch (device2) {
        case (Screen.mobile):
          return loginTelefon(context);
        case (Screen.tablet):
          return loginTelefon(context);
        case (Screen.destop):
          return loginTelefon(context);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Giriş Yap"),
        backgroundColor: Colors.blue,
      ),
      body: drawScreen2(),
    );
  }

  Container loginTelefon(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.blue),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Image.asset(
                "assets/images/logo2.png",
                width: 270,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 45, right: 37, top: 5),
            child: Text(
              "E-posta",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: 350,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            margin: const EdgeInsets.only(left: 37, right: 37, top: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                icon: Icon(Icons.mail),
                border: InputBorder.none,
                hintText: "E-posta adresinizi girin...",
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 45, right: 37, top: 5),
            child: Text(
              "Şifre",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            margin: const EdgeInsets.only(left: 37, right: 37, top: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.lock),
                      border: InputBorder.none,
                      hintText: "Parolanızı girin...",
                    ),
                    obscureText: !showPassword,
                    enableSuggestions: false,
                    autocorrect: false,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    showPassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 45.0, right: 45.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: rememberMe,
                        onChanged: (value) {
                          setState(() {
                            rememberMe = value!;
                          });
                        },
                      ),
                      const Text(
                        'Şifremi Hatırla',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Text(
                    "Şifremi Unuttum?",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              SizedBox(
                width: 225,
                child: ElevatedButton(
                  onPressed: () {
                    login(
                        emailController.text, passwordController.text, context);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                  ),
                  child: const Text('Giriş Yap'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/1024px-Google_%22G%22_logo.svg.png',
                      height: 30,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network(
                      'https://assets.stickpng.com/images/5ecec78673e4440004f09e77.png',
                      height: 30,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network(
                      'https://seeklogo.com/images/T/twitter-x-logo-0339F999CF-seeklogo.com.png?v=638264860180000000',
                      height: 30,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
