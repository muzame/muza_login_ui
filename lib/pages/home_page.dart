import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login UI'),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.green.shade900,
          Colors.green.shade500,
          Colors.green.shade400,
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80.0,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Login', style: TextStyle(fontSize: 40, color: Colors.white,)),
                    SizedBox(height: 10,),
                    Text('Weloce Back', style: TextStyle(fontSize: 20, color: Colors.white,)),
                    SizedBox(height: 60,),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60)),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: [
                        SizedBox(height: 60,),

                        // #email, #password
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(
                              color: Color.fromRGBO(171, 171, 171, 0.7),blurRadius: 20,offset: Offset(0,10)
                            )]
                          ),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Email',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 40,),

                        // #login
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.green.shade800,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text('Login', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                        ),

                        SizedBox(height: 30,),

                        // #login with SNS
                        Text('Login with SNS',style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),

                        SizedBox(height: 30,),

                        // #facebook, #github
                        Row(
                        children: [

                          Expanded(
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Center(child: Text('Facebook', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),),
                          )),

                          SizedBox(
                            width: 30,
                          ),

                          Expanded(
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Center(child: Text('Github', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),),
                              )),
                        ],
                      ),
                    ],
                    ),
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
