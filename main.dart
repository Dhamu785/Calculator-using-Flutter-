import 'package:flutter/material.dart';

void main()
{
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home:  Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(flex: 3, child:Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.bottomRight,
                child: Text(fir,
                style: TextStyle(fontSize: 40, fontWeight:FontWeight.w600 ),
                ),
            )
              ),
              
             Expanded(
              child:Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.bottomRight,
                height: 100,
                child: Text(text,
                style: TextStyle(fontSize: 40, fontWeight:FontWeight.w600),
                ),
                
              ),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                customoutline('7'),
                customoutline('8'),
                customoutline('9'),
                //customoutline('+'),
                Expanded(
                      child: OutlineButton(
                      borderSide: BorderSide(color: Colors.blue,width: 2),
                      padding:EdgeInsets.all(20),
                      splashColor: Colors.orange,
                      textColor: Colors.pinkAccent,
                      onPressed:(){
                        btnclicked('+');
                      },
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic)
                        )
                    ),
                ),
                /*OutlineButton(
                  padding:EdgeInsets.all(20),
                  onPressed:(){},
                  child: Text(
                    '9',
                    style: TextStyle(fontSize: 20,fontWeight:FontWeight.w400)
                    )
                ),
                OutlineButton(
                  padding:EdgeInsets.all(20),
                  onPressed:(){},
                  child: Text(
                    '8',
                    style: TextStyle(fontSize: 20,fontWeight:FontWeight.w400)
                    )
                ),
                OutlineButton(
                  padding:EdgeInsets.all(20),
                  onPressed:(){},
                  child: Text(
                    '7',
                    style: TextStyle(fontSize: 20,fontWeight:FontWeight.w400)
                    )
                ),
                OutlineButton(
                  padding:EdgeInsets.all(20),
                  onPressed:(){},
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 20,fontWeight:FontWeight.w400)
                    )
                ),*/
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                customoutline('4'),
                customoutline('5'),
                customoutline('6'),
                //customoutline('-'),
                Expanded(
                      child: OutlineButton(
                      borderSide: BorderSide(color: Colors.blue,width: 2),
                      padding:EdgeInsets.all(20),
                      splashColor: Colors.orange,
                      textColor: Colors.pinkAccent,
                      onPressed:(){
                        btnclicked('-');
                      },
                      child: Text(
                        '-',
                        style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic)
                        )
                    ),
                ),

                /*OutlineButton(
                  padding:EdgeInsets.all(20),
                  onPressed:(){},
                  child: Text(
                    '6',
                    style: TextStyle(fontSize: 20,fontWeight:FontWeight.w400)
                    )
                ),
                OutlineButton(
                  padding:EdgeInsets.all(20),
                  onPressed:(){},
                  child: Text(
                    '5',
                    style: TextStyle(fontSize: 20,fontWeight:FontWeight.w400)
                    )
                ),
                OutlineButton(
                  padding:EdgeInsets.all(20),
                  onPressed:(){},
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 20,fontWeight:FontWeight.w400)
                    )
                ),
                OutlineButton(
                  padding:EdgeInsets.all(20),
                  onPressed:(){},
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 20,fontWeight:FontWeight.w400)
                    )
                ),*/
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                customoutline('1'),
                customoutline('2'),
                customoutline('3'),
                //customoutline('*'),
                Expanded(
                      child: OutlineButton(
                      borderSide: BorderSide(color: Colors.blue,width: 2),
                      padding:EdgeInsets.all(20),
                      splashColor: Colors.orange,
                      textColor: Colors.pinkAccent,
                      onPressed:(){
                        btnclicked('*');
                      },
                      child: Text(
                        'x',
                        style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic)
                        )
                    ),
                ),
                 
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children: <Widget>[
                Expanded(
                      child: OutlineButton(
                      borderSide: BorderSide(color: Colors.red,width: 2),
                      padding:EdgeInsets.all(20),
                      splashColor: Colors.red,
                      textColor: Colors.cyan,
                      onPressed:(){
                        btnclicked('C');
                      },
                      child: Text(
                        'C',
                        style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic)
                        )
                    ),
                ),
                customoutline('0'),
                //customoutline('x'),
                Expanded(
                      child: OutlineButton(
                      borderSide: BorderSide(color: Colors.lightGreen,width: 3),
                      padding:EdgeInsets.all(20),
                      splashColor: Colors.green,
                      textColor: Colors.green,
                      onPressed:(){
                        btnclicked('=');
                      },
                      child: Text(
                        '=',
                        style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic)
                        )
                    ),
                ),
                //customoutline('/'),
                Expanded(
                      child: OutlineButton(
                      borderSide: BorderSide(color: Colors.blue,width: 2,style: BorderStyle.solid),
                      padding:EdgeInsets.all(20),
                      splashColor: Colors.orangeAccent,
                      textColor: Colors.pinkAccent,
                      onPressed:(){
                        btnclicked('/');
                      },
                      child: Text(
                        '/',
                        style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic)
                        )
                    ),
                ),
                
              ]
            ),  
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Center(
                child:Text(
                  '-  Dhamodharan . R',
                  style: TextStyle(fontStyle:FontStyle.italic,fontSize: 7,fontWeight: FontWeight.bold),
                  ))
              ],
            )
          ]
        ),
      ),
    );
  }

Widget customoutline(String val)
{
  return Expanded(
      child: OutlineButton(
                    padding:EdgeInsets.all(20),
                    splashColor: Colors.black,
                    onPressed:(){
                      btnclicked(val);
                    },
                    child: Text(
                      val,
                      style: TextStyle(fontSize: 20,fontWeight:FontWeight.w400,color: Colors.black)
                      )
                  ),
  );
}

String res='0',text = '';
String opp='',fir='0';
double first=0,second; 
void btnclicked(String btnval)
{
  if (btnval == 'C')
  {
    text = '';
    res = '';
    opp='';
    first =0;
  }
  else if(btnval=='+' || btnval == '-' || btnval == '/' || btnval=='*')
  {
    
    if (opp == '+' || opp == '-' || opp=='*' || opp=='/')
    {
      opp =btnval;
      //print(opp);

      res='';

    }
    else{
      print('else on');
         first = double.parse(res);
         res='';
         opp = btnval;
    //print(first.runtimeType);
    //print(opp);
    }
  }
  else if(btnval == '=')
  {
    second = double.parse(res);
    print(second);
    //print(second.runtimeType);
    if (opp == '+')
    {
      res = (first + second).toString();
      first = double.parse(res);
    }
    else if (opp == '-')
    {
      res = (first - second).toString();
      first = double.parse(res);
      print(first);
      
    }
    else if (opp == '*')
    {
      res = (first * second).toString();
      first = double.parse(res);
    }
    else if (opp == '/')
    {
      res = (first / second).toString();
      first = double.parse(res);
    }
  }
  else if(btnval == '1' || btnval == '2' ||btnval == '3' ||btnval == '4' ||btnval == '5' ||btnval == '6' ||btnval == '7' ||btnval == '8' ||btnval == '9' ||btnval == '0')
  {
    
    res = text + btnval;
    print(res);
  
    
    //print(res);
  }
  else
  {
  //res = text + btnval;
  res == 'check';
  }
  setState(() {
    text = res;
    fir = first.toString();
  });
}
}