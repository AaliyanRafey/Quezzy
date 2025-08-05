import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:queezy_app/utils/widgets/countdown_widget.dart';
import 'package:queezy_app/views/Quiz/quiz5.dart';

class Quiz4 extends StatefulWidget {
  const Quiz4({super.key});

  @override
  State<Quiz4> createState() => _Quiz4State();
}

class _Quiz4State extends State<Quiz4> {
  late RecorderController recorderController;
  bool isRecording = false;

  @override
  void initState() {
    super.initState();
    recorderController = RecorderController();
    requestMicPermission();
  }

  Future<void> requestMicPermission() async {
    final status = await Permission.microphone.request();
    if (!status.isGranted) {
      // Handle permission denial
      print("Microphone permission denied");
    }
  }

  void startRecording() {
    recorderController.reset();
    recorderController.record();
    setState(() => isRecording = true);
  }

  void stopRecording() async {
    await recorderController.stop();
    setState(() => isRecording = false);
  }

  @override
  void dispose() {
    recorderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/top1.png',
                fit: BoxFit.cover,
                height: 36,
                width: 367,
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  // OR if using GetX:
                  Get.to(Quiz5());
                },
                child: Container(
                  height: 750,
                  width: 390,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        PieCountdown(
                          seconds: 10,
                          size: 70,
                          nextScreen: Quiz5(),
                        ),
                        const SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'QUESTION 6 OF 10',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'RubikReg',
                                  color: Color(0xff858494),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "How to pronounce Wojciech Szczesny?",
                                style: TextStyle(
                                  fontSize: 21,
                                  fontFamily: 'RubikMed',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),

                        GestureDetector(
                          onLongPress: startRecording,
                          onLongPressUp: stopRecording,
                          child: Image.asset(
                            'assets/images/hts.png',
                            height: 174,
                            width: 174,
                            fit: BoxFit.cover,
                          ),
                        ),

                        const SizedBox(height: 20),

                        if (isRecording)
                          AudioWaveforms(
                            enableGesture: false,
                            size: const Size(350, 60),
                            recorderController: recorderController,
                            waveStyle: const WaveStyle(
                              waveColor: Colors.deepPurple,
                              showMiddleLine: false,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
