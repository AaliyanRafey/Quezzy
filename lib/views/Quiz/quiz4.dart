import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          padding: EdgeInsets.all(12.r),
          child: Column(
            children: [
              SizedBox(height: 30),
              Image.asset(
                'assets/images/top1.png',
                fit: BoxFit.cover,
                height: 36.h,
                width: 367.w,
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  // OR if using GetX:
                  Get.to(Quiz5());
                },
                child: Container(
                  height: 750.h,
                  width: 390.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(9.r),
                    child: Column(
                      children: [
                        SizedBox(height: 20.h),
                        PieCountdown(
                          seconds: 10,
                          size: 80.r,
                          nextScreen: Quiz5(),
                        ),
                        SizedBox(height: 50.h),
                        Padding(
                          padding: EdgeInsets.all(15.0.r),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'QUESTION 6 OF 10',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontFamily: 'RubikReg',
                                  color: Color(0xff858494),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                "How to pronounce Wojciech Szczesny?",
                                style: TextStyle(
                                  fontSize: 21.sp,
                                  fontFamily: 'RubikMed',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.h),

                        GestureDetector(
                          onLongPress: startRecording,
                          onLongPressUp: stopRecording,
                          child: Image.asset(
                            'assets/images/hts.png',
                            height: 174.h,
                            width: 174.w,
                            fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(height: 20.h),

                        if (isRecording)
                          AudioWaveforms(
                            enableGesture: false,
                            size: Size(350.w, 60.h),
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
