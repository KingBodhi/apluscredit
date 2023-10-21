import 'package:flutter/material.dart';

class SurveyPage extends StatefulWidget {
  @override
  _SurveyPageState createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final isLargeScreen = MediaQuery.of(context).size.width > 600;
    final isMobile = MediaQuery.of(context).size.width <= 600;

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'YOUR PARTNER IN CREDIT',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: isMobile ? 15.0 : 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF008A00),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            color: Color(0xFFFFFFFF),
            height: 1.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Hero Section (Image at the top)
            if (isLargeScreen)
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          child: Image.asset(
                            'assets/aplus.png',
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          color: Colors.white, // White background
                          child: Image.asset(
                            'assets/credit.webp',
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            // Small Screen Layout for Hero Section
            if (isMobile)
              Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    child: Image.asset(
                      'assets/aplus.png',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.white, // White background
                    child: Image.asset(
                      'assets/credit.webp',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),

            // Survey Question Box
            Container(
              color: Color(0xFFFFFFFF),
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 20.0),
                  Text(
                    'Please provide your information:',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 20.0),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: firstNameController,
                          decoration: InputDecoration(labelText: 'First Name'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your first name';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: lastNameController,
                          decoration: InputDecoration(labelText: 'Last Name'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your last name';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: phoneNumberController,
                          decoration: InputDecoration(labelText: 'Phone Number'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your phone number';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(labelText: 'Email'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Return to the previous page (OptInPage)
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF008A00),
                        ),
                        child: Text(
                          'Previous',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Handle form submission and navigate to the next page
                            // You can access the form data using the controller.text
                            // properties of the TextEditingControllers (e.g., firstNameController.text)
                            Navigator.of(context).pushNamed('/congratulations');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF008A00),
                        ),
                        child: Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Footer section
            Container(
              color: Color(0xFF008A00),
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'THIS IS YOUR DEFINING MOMENT!\nBECOME APART OF THE A+ CREDIT FAMILY!',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/surveypage');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        'FREE CREDIT CONSULTATION',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xFF008A00),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'WE OFFER A 100% MONEY BACK GUARANTEE WITHIN 120 DAYS IF\n'
                    'YOU DO NOT SEE ANY TYPE OF RESULTS WITHIN 120 DAYS OF STARTING\n'
                    'THE "A+ CREDIT PROGRAM".',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '© 2023 A PLUS CREDIT LLC\nALL RIGHTS RESERVED | PRIVACY POLICY',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'DISCLAIMER:\n'
                    'THIS SITE IS NOT A PART OF THE FACEBOOK WEBSITE OR FACEBOOK INC.\n'
                    'ADDITIONALLY, THIS SITE IS NOT ENDORSED BY FACEBOOK IN ANY WAY.\n'
                    'FACEBOOK IS A TRADEMARK OF FACEBOOK, INC.\n'
                    '\n'
                    'CREDIT REPAIR RESULTS DISCLAIMER:\n'
                    'RESULTS MAY VARY AND TESTIMONIALS ARE NOT CLAIMED TO REPRESENT TYPICAL RESULTS.\n'
                    'WE DO NOT CLAIM YOU WILL RECEIVE A 700 CREDIT SCORE, NOR DO WE MAKE A GUARANTEE.\n'
                    '*OUR 120 DAY MONEY BACK GUARANTEE IS ONLY IF WE SEE NO TYPE OF DELETIONS OF NEGATIVE ITEMS SUCH AS INQUIRIES, COLLECTIONS, CHARGED OFFS, ETC. WITHIN THE FIRST 120 DAYS OF START DATE.\n'
                    'ALL TESTIMONIALS ARE REAL. THESE RESULTS ARE MEANT AS A SHOWCASE OF THE BEST CREDIT REPAIR RESULTS WE HAVE DONE & SHOULD NOT BE TAKEN AS AVERAGE OR TYPICAL RESULTS.\n'
                    '\n'
                    'YOU SHOULD PERFORM YOUR OWN DUE DILIGENCE & USE YOUR OWN BEST JUDGMENT PRIOR\n'
                    'TO MAKING ANY INVESTMENT DECISION PERTAINING TO YOUR CREDIT.\n'
                    'BY VIRTUE OF VISITING THIS SITE OR INTERACTING WITH ANY PORTION OF THIS SITE, YOU AGREE\n'
                    'THAT YOU’RE FULLY RESPONSIBLE FOR THE INVESTMENTS YOU MAKE & ANY OUTCOMES THAT MAY RESULT.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Handle "Terms & Conditions" button click
                        },
                        child: Text(
                          'TERMS & CONDITIONS',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(' | ', style: TextStyle(color: Colors.white)),
                      TextButton(
                        onPressed: () {
                          // Handle "Privacy Policy" button click
                        },
                        child: Text(
                          'PRIVACY POLICY',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(' | ', style: TextStyle(color: Colors.white)),
                      TextButton(
                        onPressed: () {
                          // Handle "Disclaimer" button click
                        },
                        child: Text(
                          'DISCLAIMER',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
