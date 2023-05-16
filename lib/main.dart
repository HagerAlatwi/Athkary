import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: hager()));
}

class hager extends StatefulWidget {
  const hager({Key? key}) : super(key: key);


  @override
  State<hager> createState() => _hagerState();
}

class _hagerState extends State<hager> {

  late AudioPlayer player;
  bool isPlaying = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    player = AudioPlayer();
  }

  playingMusic(String urlLink){
    if(isPlaying){
      setState(() {
        isPlaying = false;
      });
      player.stop();
    }
    else{
      setState(() {
        isPlaying = true;
      });
      player.play(UrlSource('$urlLink'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('أذكاري')),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black45,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ElevatedButton(
                onPressed: (){
                  playingMusic('https://ia802305.us.archive.org/31/items/MsherrY-03_uP_bY_mUSLEm/002.mp3');
                },
                child: Row(
                  children: [
                    Icon(Icons.bed,),
                    Spacer(),
                    Text('أذكار الاستيقاظ  '),
                  ],
                ),
                style:
                ElevatedButton.styleFrom(
                  textStyle: TextStyle(fontSize: 28,fontFamily: 'Tajawal',fontWeight: FontWeight.bold),
                  primary: Color(0xFFCCD4BF),
                  onPrimary: Color(0xFF61675B),
                ),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: (){
                playingMusic('https://ia902305.us.archive.org/31/items/MsherrY-03_uP_bY_mUSLEm/008.mp3');
              },
              child: Row(
                children: [
                  Icon(Icons.sunny,),
                  Spacer(),
                  Text('أذكار الصباح  '),
                ],
              ),
              style:
              ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 28,fontFamily: 'Tajawal',fontWeight: FontWeight.bold),
                primary: Color(0xFFE7CBA9),
                onPrimary: Color(0xFF61675B ),

              ),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: (){
                playingMusic('https://ia902305.us.archive.org/31/items/MsherrY-03_uP_bY_mUSLEm/005.mp3');
              },
              child: Row(
                children: [
                  Icon(Icons.account_balance_rounded,),
                  Spacer(),
                  Text('أذكار المسجد  '),
                ],
              ),
              style:
              ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 28,fontFamily: 'Tajawal',fontWeight: FontWeight.bold,),
                primary: Color(0xFFEEBAB2),
                onPrimary: Color(0xFF61675B),

              ),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: (){
                playingMusic('https://ia804508.us.archive.org/10/items/all----years-----mp3--do3aa----traweeh--and--khatm---quran---and--laylat--alqa_717/143.mp3');
              },
              child: Row(
                children: [
                  Icon(Icons.nightlight,),
                  Spacer(),
                  Text('أذكار المساء  '),
                ],
              ),
              style:
              ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 28,fontFamily: 'Tajawal', ),
                primary: Color(0xFFF5F3E7),
                onPrimary: Color(0xFF61675B),

              ),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: (){
                playingMusic('https://ia802305.us.archive.org/31/items/MsherrY-03_uP_bY_mUSLEm/010.mp3');
              },
              child: Row(
                children: [
                  Icon(Icons.night_shelter_rounded,),
                  Spacer(),
                  Text('أذكار النوم  '),
                ],
              ),
              style:
              ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 28,fontFamily: 'Tajawal',fontWeight: FontWeight.bold),
                primary: Color(0xFFF5E2E4),
                onPrimary: Color(0xFF61675B),
              ),
            ),
          ),
        ],

      ),
    );
  }

}
