import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late VideoPlayerController _controllerA;
  late VideoPlayerController _controllerB;

  // Track which controller is currently the active visible background
  bool _isPlayerAActive = true;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    
    _initializePlayers();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized) {
      return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(child: CircularProgressIndicator(color: Colors.white)),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          // Video Player B Layer
          Positioned.fill(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: _controllerB.value.size.width,
                height: _controllerB.value.size.height,
                child: VideoPlayer(_controllerB),
              ),
            ),
          ),

          // Video Player A Layer with Animated Opacity for Cross-Fading
          Positioned.fill(
            child: AnimatedOpacity(
              opacity: _isPlayerAActive ? 1.0 : 0.0,
              duration: const Duration(
                milliseconds: 1200,
              ), // Smooth transition duration
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _controllerA.value.size.width,
                  height: _controllerA.value.size.height,
                  child: VideoPlayer(_controllerA),
                ),
              ),
            ),
          ),

          // Dark overlay to ensure text readability
          // Positioned.fill(
          //   child: Container(color: Colors.black..withValues(alpha: 0.8)),
          // ),

          const Positioned.fill(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'AAYUSH CHAUBE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'LAUNCHING SOON',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      letterSpacing: 2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controllerA.removeListener(_videoAListener);
    _controllerB.removeListener(_videoBListener);
    _controllerA.dispose();
    _controllerB.dispose();
    super.dispose();
  }

  Future<void> _initializePlayers() async {
    // Replace with your asset path or remote URL
    _controllerA = VideoPlayerController.asset(
      'assets/mp4s/pexels_videos_4703.mp4',
    );
    _controllerB = VideoPlayerController.asset(
      'assets/mp4s/pexels_videos_4703.mp4',
    );
    _controllerA.setVolume(0.0);
    _controllerB.setVolume(0.0);

    await Future.wait([_controllerA.initialize(), _controllerB.initialize()]);

    // Set up listeners to monitor the timing for the cross-fade
    _controllerA.addListener(_videoAListener);
    _controllerB.addListener(_videoBListener);

    // Start playing the primary video
    _controllerA.play();

    setState(() {
      _isInitialized = true;
    });
  }

  void _videoAListener() {
    if (!_controllerA.value.isInitialized) return;

    final position = _controllerA.value.position;
    final duration = _controllerA.value.duration;

    // Define a overlap/fade window (e.g., 1.5 seconds before the video ends)
    const fadeDuration = Duration(milliseconds: 1500);
    final triggerTime = duration - fadeDuration;

    if (_isPlayerAActive && position >= triggerTime) {
      setState(() {
        _isPlayerAActive = false; // Cross-fade to Player B
      });
      _controllerB.seekTo(Duration.zero);
      _controllerB.play();
    }

    // Reset Player A once it completely finishes
    if (position >= duration) {
      _controllerA.pause();
    }
  }

  void _videoBListener() {
    if (!_controllerB.value.isInitialized) return;

    final position = _controllerB.value.position;
    final duration = _controllerB.value.duration;

    const fadeDuration = Duration(milliseconds: 1500);
    final triggerTime = duration - fadeDuration;

    if (!_isPlayerAActive && position >= triggerTime) {
      setState(() {
        _isPlayerAActive = true; // Cross-fade back to Player A
      });
      _controllerA.seekTo(Duration.zero);
      _controllerA.play();
    }

    // Reset Player B once it completely finishes
    if (position >= duration) {
      _controllerB.pause();
    }
  }
}
