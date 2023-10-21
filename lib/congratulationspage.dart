import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
              fontSize: 15.0,
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
        child: SingleChildScrollView( // Wrap the Column with SingleChildScrollView
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0), // Added padding to all sides of text
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    Image.asset('assets/aplus.png'), // Insert aplus.png at the top

                        Container(
                          width: double.infinity,
                          color: Colors.white, // White background
                          child: Image.asset(
                            'assets/credit.webp',
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                        ),


                    SizedBox(height: 20.0),
                    Text(
                      'CONGRATULATIONS!!!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFF008A00)),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'YOU HAVE SUCCESSFULLY TAKEN ACTION TO \nIMPROVE YOUR FINANCIAL FUTURE.',
                      style: TextStyle(fontSize: 20.0),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () async {
                        const url = 'https://smartcredit.com/join/';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF008A00),
                        minimumSize: Size(double.infinity, 50.0),
                      ),
                      child: Text(
                        'CREDIT SMART',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'PLEASE SIGN UP FOR CREDIT SMART AND GENERATE A CURRENT CREDIT REPORT.',
                      style: TextStyle(fontSize: 14.0),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'FREQUENTLY ASKED QUESTIONS\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFF008A00)),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'WHAT CAN BE REMOVED?\n',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF008A00)),
                    ),
                    Text(
                      'OUR POWERFUL SYSTEM CAN ELIMINATE VIRTUALLY ALL ADVERSE ELEMENTS FROM YOUR CREDIT REPORT, SUCH AS BANKRUPTCIES, LATE PAYMENTS, COLLECTIONS, STUDENT LOAN DELINQUENCIES, REPOSSESSIONS, LIENS, INQUIRIES, AND INCORRECT ADDRESSES.',
                      style: TextStyle(fontSize: 16.0),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'HOW DOES IT WORK?\n',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF008A00)),
                    ),
                    Text(
                      'WE EMPLOY AN INDUSTRY-LEADING, MULTI-STAGE APPROACH TO BOOST YOUR CREDIT SCORE. FOR EACH NEGATIVE ITEM, WE CUSTOMIZE OUR STRATEGY. IN MOST CASES, ENTITIES REPORTING NEGATIVE ITEMS LACK A VALID CONTRACT WITH YOU. THEREFORE, OUR TEAM IS LEGALLY EMPOWERED TO NEGOTIATE WITH THE AGENCIES USING OUR CUTTING-EDGE, PROPRIETARY FORMULA.',
                      style: TextStyle(fontSize: 16.0),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'HOW LONG DOES IT TAKE?\n',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF008A00)),
                    ),
                    Text(
                      'THE TIME TO REMOVE NEGATIVE ITEMS VARIES BY CASE. WE TAILOR OUR PLAN BASED ON YOUR UNIQUE SITUATION. TYPICALLY, YOU\'LL START SEEING RESULTS WITHIN A MONTH, BUT IT COULD TAKE UP TO SIX MONTHS. SIGN UP, AND OUR EXPERTS WILL PROVIDE A FREE CREDIT RESTORATION ASSESSMENT, INCLUDING AN ESTIMATED TIMEFRAME.',
                      style: TextStyle(fontSize: 16.0),
                      textAlign: TextAlign.center,
                    ),
                  ],
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
                            'TERMS & CONDITIONS',
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
                            'PRIVACY POLICY',
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
                            'DISCLAIMER',
                            style: TextStyle(
                              color: Colors.white, // White text color
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '© 2023 A PLUS CREDIT LLC\nALL RIGHTS RESERVED | PRIVACY POLICY',
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
      ),
    );
  }
}
