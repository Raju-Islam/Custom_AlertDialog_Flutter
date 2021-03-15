

import 'package:flutter/material.dart';

void main() => runApp(
      new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        theme: new ThemeData(
          primaryColorBrightness: Brightness.dark,
        ),
      ),
    );

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text("Dialog"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  elevation: 20,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                            "Dialog",
                            style: new TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              "Do you want to use this feture.this feture provide you more aficient feture.If you want to use this feture please click ok button.",
                              style:  new TextStyle(fontSize: 20,),),
                          SizedBox(height: 15,),
                          MaterialButton(
                            color: Colors.black87,
                              minWidth: 10.00,
                              elevation: 50,
                              child: new Text("Ok",style: new TextStyle(fontSize: 22,color: Colors.white),),
                              splashColor: Colors.blue,
                              onPressed: (){
                            Navigator.pop(context);
                          })
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
          child: Container(
            child: Center(
                child: Text(
              "Click",
              style: new TextStyle(fontSize: 20, color: Colors.white),
            )),
            height: MediaQuery.of(context).size.height / 20,
            width: MediaQuery.of(context).size.width / 3.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
  }
}
