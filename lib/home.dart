import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List colors = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.teal,
      Colors.blue,
      Colors.purple
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Play your tune',
          style: GoogleFonts.pacifico(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SoundButton(
            color: colors[0],
            num: "1",
          ),
          SoundButton(
            color: colors[1],
            num: "2",
          ),
          SoundButton(
            color: colors[2],
            num: "3",
          ),
          SoundButton(
            color: colors[3],
            num: "4",
          ),
          SoundButton(
            color: colors[4],
            num: "5",
          ),
          SoundButton(
            color: colors[5],
            num: "6",
          ),
          SoundButton(
            color: colors[6],
            num: "7",
          ),
        ],
      ),
    );
  }
}

class SoundButton extends StatelessWidget {
  final Color color;
  final num;
  const SoundButton({
    super.key,
    required this.color,
    this.num,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        height: 65,
        child: ElevatedButton(
            style:
                ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
            onPressed: () async {
              final assetsAudioPlayer = AssetsAudioPlayer();

              assetsAudioPlayer.open(
                Audio("assets/assets_note$num.wav"),
              );
            },
            child: null),
      ),
    );
  }
}
