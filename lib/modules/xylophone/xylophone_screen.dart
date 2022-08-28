import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class XylophoneScreen extends StatelessWidget {
  const XylophoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();

    final List<Color> barColors = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.blue,
      Colors.indigo,
      Colors.purple,
    ];
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Xylophone".toUpperCase()),
        ),
        body: SafeArea(
          child: Column(
            children: List.generate(7, (index) => index)
                .map((e) => XyloBars(
                    player: player, note: e + 1, barColor: barColors[e]))
                .toList(),
          ),
        ));
  }
}

class XyloBars extends StatelessWidget {
  final AudioPlayer player;
  final int note;
  final Color barColor;

  const XyloBars({
    required this.player,
    required this.note,
    required this.barColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () async {
          await player.play(AssetSource('note$note.wav'),
              mode: PlayerMode.lowLatency);
        },
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            decoration: BoxDecoration(
                color: barColor, borderRadius: BorderRadius.circular(18)),
          ),
        ),
      ),
    );
  }
}
