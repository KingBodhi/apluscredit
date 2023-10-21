import 'package:flutter/material.dart';

class OptInPage extends StatefulWidget {
  @override
  _OptInPageState createState() => _OptInPageState();
}

class _OptInPageState extends State<OptInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final isLargeScreen = MediaQuery.of(context).size.width > 600;
    final isMobile = MediaQuery.of(context).size.width <= 600;

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BECOME APPROVAL READY FOR A HOME OR HIGH-LIMIT CREDIT CARD!',
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
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              // Hero Section
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
                          SizedBox(height: 20.0),
                          Text(
                            'ARE YOU READY TO BECOME\nAPPROVAL READY!?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 33.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF008A00),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('/surveypage');
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF008A00),
                            ),
                            child: Text(
                              'FREE CREDIT CONSULTATION!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 33.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Image.asset('assets/score.png'),
                    ),
                  ],
                ),

              // Small Screen Layout
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
                    SizedBox(height: 10.0),
                    Text(
                      'ARE YOU READY TO BECOME\nAPPROVAL READY!?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 33.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF008A00),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/surveypage');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF008A00),
                      ),
                      child: Text(
                        'FREE CREDIT CONSULTATION!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 33.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Image.asset('assets/score.png'),
                  ],
                ),


              SizedBox(height: isMobile ? 0 : 20.0), // Add space in non-mobile view
              Container(
                color: Color(0xFF008A00),
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    Text(
                      'UNLOCK YOUR FULL FINANCIAL POTENTIAL WITH \nA+ CREDIT!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'IS THIS 30 MINUTE CREDIT REPAIR CONSULTATION CALL FOR ME?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'YES, THIS CALL IS FOR YOU, ESPECIALLY IF YOU...',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      '- ARE SICK AND TIRED OF LIVING WITH BAD CREDIT AND NOT SEEING YOUR CREDIT SCORE GO UP.\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '- HAVE TRIED FIXING YOUR CREDIT IN THE PAST AND SAW NO RESULTS.\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "- ARE TIRED OF PAYING MONTHLY FEES TO CREDIT COMPANIES THAT LACK COMMUNICATION.\n",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "- WANT TO IMPROVE YOUR CREDIT SO YOU CAN FINALLY GET APPROVED FOR YOUR DREAM HOUSE OR GET THE CAPITAL YOU NEED TO START OR SCALE YOUR BUSINESS.\n",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "- WANT A DONE-FOR-YOU CREDIT REPAIR TEAM WHO WILL WORK ON YOUR CREDIT EVERY MONTH UNTIL YOUR INACCURATE NEGATIVE ACCOUNTS ARE REMOVED FROM YOUR CREDIT REPORT.\n",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "- ARE LOOKING TO BUY A HOUSE WITHIN 6 - 12 MONTHS AND NEED A SCORE BOOST.\n",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "BENEFITS OF OUR SERVICE\n",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "BOOST YOUR CREDIT SCORE FAST\n",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "REMOVE NEGATIVE ITEMS FROM YOUR CREDIT REPORT\n",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "ACHIEVE FINANCIAL FREEDOM\n",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "IF THIS SOUNDS TOO GOOD TO BE TRUE, THEN WE PERSONALLY INVITE YOU TO BOOK A CREDIT CONSULTATION, AND WE'LL PROVE IT TO YOU.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'CLIENT RESULTS',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 33.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF008A00),
                ),
              ),
              SizedBox(height: 10.0),
              if (!isMobile)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset(
                      'assets/test1.webp',
                      width: 400.0,
                      height: 600.0,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/test2.webp',
                      width: 400.0,
                      height: 600.0,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              if (isMobile)
                Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/test1.webp',
                      width: 400.0,
                      height: 600.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 10.0),
                    Image.asset(
                      'assets/test2.webp',
                      width: 400.0,
                      height: 600.0,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              SizedBox(height: 20.0),
              if (!isMobile)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset(
                      'assets/test3.webp',
                      width: 400.0,
                      height: 600.0,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/test4.webp',
                      width: 400.0,
                      height: 600.0,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              if (isMobile)
                Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/test3.webp',
                      width: 400.0,
                      height: 600.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 10.0),
                    Image.asset(
                      'assets/test4.webp',
                      width: 400.0,
                      height: 600.0,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
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
      ),
    );
  }
}
