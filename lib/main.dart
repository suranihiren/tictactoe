import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Myapp(),
    debugShowCheckedModeBanner: false,
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  List hi = ['', '', '', '', '', '', '', '', ''];
  int cnt = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(centerTitle: true,
        title: const Text('Tic Tac Toe'),
        backgroundColor: Colors.white12,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 80),
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {

                      if (hi[0] == ''){
                        hi[0]='O';
                        print("===1${hi[0]}");
                        cnt++;
                        print("===2$cnt");
                        win();
                        if(cnt<=4){print("====4$cnt");
                          while(true){
                            int rr = Random().nextInt(8);
                            if(hi[rr]==''){

                              hi[rr]='X';
                              print("======R1${hi[rr]}");
                              win();
                              break;
                            }
                          }
                        }
                      }

                    });
                  },
                  child: Text(
                    hi[0],
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 80),
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    setState(
                          () {

                        if (hi[1] == ''){
                          hi[1]='O';
                          win();
                          cnt++;
                          if(cnt<=4){
                            while(true){
                              int rr = Random().nextInt(9);

                              if(hi[rr]==''){
                                hi[rr]='X';
                                win();
                                break;
                              }
                            }
                          }
                        }

                      },
                    );
                  },
                  child: Text(
                    hi[1],
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 80),
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      if (hi[2] == ''){
                        hi[2]='O';
                        win();
                        cnt++;
                        if(cnt<=4){
                          while(true){
                            int rr = Random().nextInt(9);

                            if(hi[rr]==''){
                              hi[rr]='X';
                              win();
                              break;
                            }
                            win();
                          }
                        }
                      }
                    });
                  },
                  child: Text(
                    hi[2],
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 80),
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      if (hi[3] == ''){
                        hi[3]='O';
                        win();

                        cnt++;
                        if(cnt<=4){
                          while(true){
                            int rr = Random().nextInt(9);

                            if(hi[rr]==''){
                              hi[rr]='X';
                              win();

                              break;
                            }

                          }
                        }
                      }

                    });
                  },
                  child: Text(
                    hi[3],
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 80),
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {

                      if (hi[4] == ''){
                        hi[4]='O';
                        win();
                        cnt++;
                        if(cnt<=4){
                          while(true){
                            int rr = Random().nextInt(9);

                            if(hi[rr]==''){
                              hi[rr]='X';
                              win();
                              break;
                            }
                          }
                        }
                      }

                    });
                  },
                  child: Text(
                    hi[4],
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 80),
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      if (hi[5] == ''){
                        hi[5]='O';
                        cnt++;
                        win();
                        if(cnt<=4){
                          while(true){
                            int rr = Random().nextInt(9);
                            if(hi[rr]==''){
                              hi[rr]='X';
                              win();
                              break;
                            }
                          }
                        }
                      }
                    });
                  },
                  child: Text(
                    hi[5],
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 80),
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      if (hi[6] == ''){
                        hi[6]='O';
                        cnt++;
                        win();

                        if(cnt<4){
                          while(true){
                            int rr = Random().nextInt(9);

                            if(hi[rr]==''){
                              hi[rr]='X';
                              win();

                              break;
                            }
                          }
                        }
                      }

                    });
                  },
                  child: Text(
                    hi[6],
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 80),
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      if (hi[7] == ''){
                        hi[7]='O';
                        win();

                        cnt++;
                        if(cnt<4){
                          while(true){
                            int rr = Random().nextInt(9);

                            if(hi[rr]==''){
                              hi[rr]='X';
                              win();

                              break;
                            }
                          }
                        }
                      }
                    });
                  },
                  child: Text(
                    hi[7],
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 80),
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      if (hi[8] == ''){
                        hi[8]='O';
                        cnt++;
                        win();
                        if(cnt<4){
                          while(true){
                            int rr = Random().nextInt(9);
                            if(hi[rr]==''){
                              hi[rr]='X';
                              win();
                              break;
                            }
                          }
                        }
                      }
                    });
                  },
                  child: Text(
                    hi[8],
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(230, 80),
                      primary: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        reset();
                      });
                    },
                    child: Text('Reset')),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 50),
                      primary: Colors.white70,
                    ),
                    onPressed: () {},
                    child: Text(R,
                      style: TextStyle(fontSize:20, color: Colors.black),)),
              ),
            ],
          )
        ],
      ),
    );
  }

  String R = '';

  void win() {
    setState(() {
      if (hi[0] == 'O' && hi[1] == 'O' && hi[2] == 'O' ||
          hi[3] == 'O' && hi[4] == 'O' && hi[5] == 'O' ||
          hi[6] == 'O' && hi[7] == 'O' && hi[8] == 'O' ||

          hi[0] == 'O' && hi[3] == 'O' && hi[6] == 'O' ||
          hi[1] == 'O' && hi[4] == 'O' && hi[7] == 'O' ||
          hi[2] == 'O' && hi[5] == 'O' && hi[8] == 'O' ||

          hi[0] == 'O' && hi[4] == 'O' && hi[8] == 'O' ||
          hi[6] == 'O' && hi[4] == 'O' && hi[2] == 'O') {
        R = 'O win';

      }
      if(hi[0] == 'X' && hi[1] == 'X' && hi[2] == 'X' ||
          hi[3] == 'X' && hi[4] == 'X' && hi[5] == 'X' ||
          hi[6] == 'X' && hi[7] == 'X' && hi[8] == 'X' ||

          hi[0] == 'X' && hi[3] == 'X' && hi[6] == 'X' ||
          hi[1] == 'X' && hi[4] == 'X' && hi[7] == 'X' ||
          hi[2] == 'X' && hi[5] == 'X' && hi[8] == 'X' ||

          hi[0] == 'X' && hi[4] == 'X' && hi[8] == 'X' ||
          hi[6] == 'X' && hi[4] == 'X' && hi[2] == 'X') {
        R = 'X win';
      }

    });
  }

  void reset() {
    setState(() {
      hi[0] = '';
      hi[1] = '';
      hi[2] = '';
      hi[3] = '';
      hi[4] = '';
      hi[5] = '';
      hi[6] = '';
      hi[7] = '';
      hi[8] = '';
      cnt=0;
      R="";
    });
  }
}