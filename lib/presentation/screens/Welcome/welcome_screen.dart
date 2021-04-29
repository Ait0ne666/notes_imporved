import 'dart:math';
import 'dart:ui' as ui;

import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:notes_improved/presentation/core/painters/SquareIconPainter.dart';
import 'package:notes_improved/presentation/core/painters/moonPainter.dart';
import 'package:notes_improved/presentation/core/painters/notepadPainter.dart';
import 'package:notes_improved/presentation/core/painters/orangeCircle.dart';

class WelcomeScreen extends StatelessWidget {
  Future<ui.Image> loadImage(String asset) async {
    ByteData data = await rootBundle.load(asset);

    final ui.Codec codec = await ui.instantiateImageCodec(
      data.buffer.asUint8List(),

      // targetWidth: 400
    );
    final ui.FrameInfo fi = await codec.getNextFrame();

    return fi.image;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 80),
          color: Color(0xff040226),
          width: double.infinity,
          constraints:
              BoxConstraints(minHeight: MediaQuery.of(context).size.height),
          child: Column(
            children: [
              Container(
                width: 300,
                height: 300,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                        right: 30,
                        top: 90,
                        child: Transform(
                          origin: Offset(30, 30),
                          transform: Matrix4.rotationZ(pi / 4),
                          child: CustomPaint(
                            painter: SquareIconPainter(
                                animation: 0,
                                endColor: Color(0xff56e4e0),
                                startColor: Color(0xff8de9f4)),
                            child: Container(
                              width: 60,
                              height: 60,
                            ),
                          ),
                        )),
                    Positioned(
                      left: 25,
                      bottom: 60,
                      child: CustomPaint(
                          painter: CirclePainter(
                              endColor: Color(0xffe37e77),
                              startColor: Color(0xffe99e85)),
                          child: Container(
                            width: 54,
                            height: 54,
                          )),
                    ),
                    Positioned(
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ui.ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: CustomPaint(
                            painter: NotepadPainter(animation: 0),
                            child: Container(
                              // color: Colors.red,
                              width: 180,
                              height: 250,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 1,
                      left: 200,
                      child: FutureBuilder(
                        future: loadImage("assets/edit.png"),
                        builder: (context, data) {
                          return CustomPaint(
                            painter: SquareIconPainter(
                                animation: 0,
                                startColor: Color(0xffcaacf8),
                                endColor: Color(0xff8371f2),
                                image: data.data),
                            child: Container(
                              width: 60,
                              height: 60,
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 60,
                      child: CustomPaint(
                          painter: CirclePainter(
                              endColor: Color(0xffffffff),
                              startColor: Color(0xffffffff)),
                          child: Container(
                            width: 5,
                            height: 5,
                          )),
                    ),
                    Positioned(
                      left: 1,
                      bottom: 30,
                      child: CustomPaint(
                          painter: CirclePainter(
                              endColor: Color(0xffffffff),
                              startColor: Color(0xffffffff)),
                          child: Container(
                            width: 5,
                            height: 5,
                          )),
                    ),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: CustomPaint(
                          painter: CirclePainter(
                              endColor: Color(0xffffffff),
                              startColor: Color(0xffffffff)),
                          child: Container(
                            width: 5,
                            height: 5,
                          )),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 35,
                      child: CustomPaint(
                          painter: CirclePainter(
                              endColor: Color(0xffffffff),
                              startColor: Color(0xffffffff)),
                          child: Container(
                            width: 5,
                            height: 5,
                          )),
                    ),
                    Positioned(
                      top: 0,
                      left: 15,
                      child: CustomPaint(
                        painter: MoonPainter(),
                        child: Container(
                          width: 40,
                          height: 40,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
