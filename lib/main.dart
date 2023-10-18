import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/custom_textfield.dart';
import 'utils/color_schemes.dart';

enum Auth {
  signin,
  signup,
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      title: 'GDSC_app_task',
      home: const MyHomePage(title: 'GDSC task'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Auth auth = Auth.signup;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (auth == Auth.signup) {
      return Scaffold(
        backgroundColor:
            Theme.of(context).scaffoldBackgroundColor.withOpacity(0.87),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white60, Colors.white10])),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Form(
              key: _signUpFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Sign Up",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Center(
                    child: Text(
                      "We are happy to have you here!",
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: CustomTextField(
                        controller: _nameController,
                        hintText: "Name",
                      ))
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: CustomTextField(
                        controller: _emailController,
                        hintText: "Email",
                      ))
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: CustomTextField(
                          controller: _passwordController,
                          hintText: "Password",
                          obsecuretext: true,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints.expand(
                        width: double.infinity, height: 50),
                    child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Theme.of(context).errorColor.withOpacity(0.72)),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            alignment: Alignment.center),
                        child: Text(
                          "Sign Up Me",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(children: <Widget>[
                    Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.only(left: 08, right: 08),
                      child: Text(
                        "or continue with",
                        style: GoogleFonts.poppins(),
                      ),
                    ),
                    Expanded(child: Divider()),
                  ]),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              width: 2.5,
                              color: Colors.white,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        onPressed: () {},
                        child: Container(
                          height: 25,
                          width: 25,
                          child: Image(
                            image: NetworkImage(
                                "https://static-00.iconduck.com/assets.00/google-icon-2048x2048-czn3g8x8.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                width: 2.5,
                                color: Colors.white,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12))),
                          onPressed: () {},
                          child: Container(
                            height: 25,
                            width: 25,
                            child: Image(
                              image: NetworkImage(
                                  "https://alchemyimmersive.com/wp-content/uploads/sites/4/2020/04/apple-logo-transparent.png"),
                              fit: BoxFit.contain,
                            ),
                          )),
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                width: 2.5,
                                color: Colors.white,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12))),
                          onPressed: () {},
                          child: Container(
                            height: 25,
                            width: 25,
                            child: Image(
                              image: NetworkImage(
                                  "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1200px-Facebook_Logo_%282019%29.png"),
                              fit: BoxFit.contain,
                            ),
                          ))
                    ],
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          auth = Auth.signin;
                        });
                      },
                      child: Text(
                        "Already have an account?",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Colors.blue),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor:
            Theme.of(context).scaffoldBackgroundColor.withOpacity(0.87),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white60, Colors.white10])),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Form(
              key: _signInFormKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Hello Again!",
                        softWrap: true,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Center(
                      child: Text(
                        "Welcome back you've been missed!",
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(fontSize: 25),
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: CustomTextField(
                              controller: _emailController,
                              hintText: "Enter username"),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: CustomTextField(
                            controller: _passwordController,
                            hintText: "Password",
                            obsecuretext: true,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Recovery password",
                            style: GoogleFonts.poppins(color: Colors.black26),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints.expand(
                          width: double.infinity, height: 50),
                      child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Theme.of(context)
                                      .errorColor
                                      .withOpacity(0.72)),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              alignment: Alignment.center),
                          child: Text(
                            "Sign In",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(children: <Widget>[
                      Expanded(child: Divider()),
                      Padding(
                        padding: const EdgeInsets.only(left: 08, right: 08),
                        child: Text(
                          "or continue with",
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                      Expanded(child: Divider()),
                    ]),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                width: 2.5,
                                color: Colors.white,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12))),
                          onPressed: () {},
                          child: Container(
                            height: 25,
                            width: 25,
                            child: Image(
                              image: NetworkImage(
                                  "https://static-00.iconduck.com/assets.00/google-icon-2048x2048-czn3g8x8.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                  width: 2.5,
                                  color: Colors.white,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12))),
                            onPressed: () {},
                            child: Container(
                              height: 25,
                              width: 25,
                              child: Image(
                                image: NetworkImage(
                                    "https://alchemyimmersive.com/wp-content/uploads/sites/4/2020/04/apple-logo-transparent.png"),
                                fit: BoxFit.contain,
                              ),
                            )),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                  width: 2.5,
                                  color: Colors.white,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12))),
                            onPressed: () {},
                            child: Container(
                              height: 25,
                              width: 25,
                              child: Image(
                                image: NetworkImage(
                                    "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1200px-Facebook_Logo_%282019%29.png"),
                                fit: BoxFit.contain,
                              ),
                            ))
                      ],
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            auth = Auth.signup;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Not a member?",
                              style: GoogleFonts.poppins(color: Colors.black),
                            ),
                            Text(
                              "Register now",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ),
      );
    }
  }
}
