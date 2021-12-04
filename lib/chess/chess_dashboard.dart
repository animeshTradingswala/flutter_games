import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

class ChassDashboard extends StatefulWidget {
  const ChassDashboard({Key? key}) : super(key: key);

  @override
  _ChassDashboardState createState() => _ChassDashboardState();
}

class _ChassDashboardState extends State<ChassDashboard> {
  ChessBoardController controller = ChessBoardController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Play Chess'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              // width: MediaQuery.of(context).size.width,
              child: ChessBoard(
                onMove: () {},
                controller: controller,
                boardColor: BoardColor.orange,
                // arrows: [
                //   BoardArrow(
                //     from: 'd2',
                //     to: 'd4',
                //   ),
                //   BoardArrow(
                //     from: 'e7',
                //     to: 'e5',
                //   ),
                // ],
                // size: MediaQuery.of(context).size.width,
                enableUserMoves: true,
                boardOrientation: PlayerColor.white,
              ),
            ),
            ValueListenableBuilder<Chess>(
              valueListenable: controller,
              builder: (context, game, _) {
                return Text(
                  controller.getSan().fold(
                        '',
                        (previousValue, element) =>
                            previousValue + '\n' + (element ?? ''),
                      ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
/*
*  Expanded(
            child: ValueListenableBuilder<Chess>(
              valueListenable: controller,
              builder: (context, game, _) {
                return Text(
                  controller.getSan().fold(
                        '',
                        (previousValue, element) =>
                            previousValue + '\n' + (element ?? ''),
                      ),
                );
              },
            ),
          ),
          * */
