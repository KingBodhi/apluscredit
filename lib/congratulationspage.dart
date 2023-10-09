import 'package:flutter/material.dart';

class CongratulationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'THANK YOU FOR TRUSTING A+ CREDIT',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF008A00),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.5), // Reduce the underline height
          child: Container(
            color: Color(0xFFFFFFFF), // White underline color
            height: 0.5,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0), // Added horizontal padding
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 20.0),
                      Text(
                        'CONGRATULATIONS!!!',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFF008A00)),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'You have successfully taken action to \nimprove your financial future.',
                        style: TextStyle(fontSize: 20.0),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20.0),
                      ElevatedButton(
                        onPressed: () {
                          // Navigate to SMART CREDIT or any other page you want
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF008A00),
                          minimumSize: Size(double.infinity, 50.0),
                        ),
                        child: Text(
                          'SMART CREDIT',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                        ),
                      ),

                      Text(
                        '\nPlease sign up for CREDIT SMART and Generate a current Credit Report.',
                        style: TextStyle(fontSize: 14.0),
                        textAlign: TextAlign.center,
                      ),

                      // Heading for FAQs
                      SizedBox(height: 20.0),
                      Text(
                        '\nFrequently Asked Questions ',
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFF008A00)),
                      ),

                      // Rephrased Paragraphs
                      SizedBox(height: 20.0),
                      Text(
                        'What Can be Removed?',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF008A00)),
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Our powerful system can eliminate virtually all adverse elements from your credit report, such as bankruptcies, late payments, collections, student loan delinquencies, repossessions, liens, inquiries, and incorrect addresses.',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'How Does It Work?',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF008A00)),
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'We employ an industry-leading, multi-stage approach to boost your credit score. For each negative item, we customize our strategy. In most cases, entities reporting negative items lack a valid contract with you. Therefore, our team is legally empowered to negotiate with the agencies using our cutting-edge, proprietary formula.',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'How Long Does it Take?',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF008A00)),
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'The time to remove negative items varies by case. We tailor our plan based on your unique situation. Typically, you\'ll start seeing results within a month, but it could take up to six months. Sign up, and our experts will provide a free credit restoration assessment, including an estimated timeframe.',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Color(0xFF008A00), // Green background color
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Handle "Terms & Conditions" button click
                        },
                        child: Text(
                          'Terms & Conditions',
                          style: TextStyle(
                            color: Colors.white, // White text color
                          ),
                        ),
                      ),
                      Text(' | ', style: TextStyle(color: Colors.white)),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/congratulations');
                        },
                        child: Text(
                          'Privacy Policy',
                          style: TextStyle(
                            color: Colors.white, // White text color
                          ),
                        ),
                      ),
                      Text(' | ', style: TextStyle(color: Colors.white)),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/congratulations');
                        },
                        child: Text(
                          'Disclaimer',
                          style: TextStyle(
                            color: Colors.white, // White text color
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '© 2023 A Plus Credit LLC\nAll Rights Reserved | Privacy Policy',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white, // White text color
                    ),
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
