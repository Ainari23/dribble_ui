import 'package:dribble_app/util/emoticon_face.dart';
import 'package:dribble_app/util/exercise_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.category), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //Manaona Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Manakory Iantsa
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Manakory, Iantsa',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '5 Avril 2024',
                            style: TextStyle(color: Colors.green[50]),
                          ),
                        ],
                      ),

                      //Notification
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green[100],
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(11),
                        child: Icon(
                          Icons.notification_important,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  //SearchBar Row
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Search...',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  //Manakory Ianao ?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Manaona ianao androany ?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  //Emoticon faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Tezitra
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😡',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Tezitra',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),

                      //Faly
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😣',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Marary',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),

                      //Mety
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😄',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Mety',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),

                      //Tena Tsara
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '🤪',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Faly be',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    children: [
                      //Exercices Heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Fanazarana',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      //ListView of exercices
                      Expanded(
                        child: ListView(
                          children: [
                            ExerciseTile(
                              icon: Icons.favorite,
                              exerciseName: 'Firesaka',
                              numberOfExercises: "20",
                              color: Colors.orange,
                            ),
                            ExerciseTile(
                              icon: Icons.person,
                              exerciseName: 'Famakian-teny',
                              numberOfExercises: "8",
                              color: Colors.blue,
                            ),
                            ExerciseTile(
                              icon: Icons.star,
                              exerciseName: 'Fanoratana',
                              numberOfExercises: "50",
                              color: Colors.pink,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
