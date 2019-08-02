import 'package:flutter/material.dart';

class ScoreBoard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyScoreBoardState();
  }
    
}

class _MyScoreBoardState extends State<ScoreBoard>{
  int gameNumber = 501;
  final scoreButtons = <Widget>[];
  
  void addScore( int score){
    setState(() {
         gameNumber -= score; 
    });
  }
  void initializeButton(){
    for(int i=20; i>0;i++){
        RaisedButton btn = RaisedButton(child: Text('$i'),
        onPressed: () => addScore(i),);
        scoreButtons.add(btn);
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  
   // initializeButton();

    return Scaffold(
      appBar: AppBar(
        title: Text("Game "+gameNumber.toString()),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              RaisedButton(onPressed:()=> addScore(20) , child: Text("20"),),
               RaisedButton(onPressed:()=> addScore(19) , child: Text("19"),),
                RaisedButton(onPressed:()=> addScore(18) , child: Text("18"),),
                 RaisedButton(onPressed:()=> addScore(17) , child: Text("17"),),    
            ],
            
          ),
          Row(children: <Widget>[            
               RaisedButton(onPressed:()=> addScore(16) , child: Text("16"),),
                RaisedButton(onPressed:()=> addScore(15) , child: Text("15"),),
                 RaisedButton(onPressed:()=> addScore(14) , child: Text("14"),),
               RaisedButton(onPressed:()=> addScore(13) , child: Text("13"),),
          ],),
          Row(children: <Widget>[
                RaisedButton(onPressed:()=> addScore(12) , child: Text("12"),),
                 RaisedButton(onPressed:()=> addScore(11) , child: Text("11"),),
               RaisedButton(onPressed:()=> addScore(10) , child: Text("10"),),
                RaisedButton(onPressed:()=> addScore(9) , child: Text("9"),),
          ],),
          Row(children: <Widget>[            
                 RaisedButton(onPressed:()=> addScore(8) , child: Text("8"),),                 
                 RaisedButton(onPressed:()=> addScore(7) , child: Text("7"),),
               RaisedButton(onPressed:()=> addScore(6) , child: Text("6"),),
               RaisedButton(onPressed:()=> addScore(5) , child: Text("5"),),
          ],),
          Row(children: <Widget>[
                RaisedButton(onPressed:()=> addScore(4) , child: Text("4"),),
                 RaisedButton(onPressed:()=> addScore(3) , child: Text("3"),),
               RaisedButton(onPressed:()=> addScore(2) , child: Text("2"),),
                RaisedButton(onPressed:()=> addScore(1) , child: Text("1"),),         

          ],),
          Text('$gameNumber'),
        ],
      ),
    );
  }

}