// Flutter Indicators Demo (single-file)

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  runApp(const IndicatorsDemoApp());
}

class IndicatorsDemoApp extends StatelessWidget {
  const IndicatorsDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Indicators Demo',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal),
      home: const IndicatorsHome(),
    );
  }
}

class IndicatorsHome extends StatefulWidget {
  const IndicatorsHome({super.key});

  @override
  State<IndicatorsHome> createState() => _IndicatorsHomeState();
}

class _IndicatorsHomeState extends State<IndicatorsHome> {
  final PageController _pageController = PageController();
  final ScrollController _scrollController = ScrollController();
  double _linearValue = 0.3;
  int _currentStep = 0;
  bool _isLoadingButton = false;

  Future<void> _fakeRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Refreshed ✅'),
        duration: Duration(seconds: 1),
      ),
    );
  }

  Future<void> _simulateButtonAction() async {
    setState(() => _isLoadingButton = true);
    await Future.delayed(const Duration(seconds: 2));
    setState(() => _isLoadingButton = false);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Action completed'),
        duration: Duration(seconds: 1),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Indicators — Simple Demo')),
      body: RefreshIndicator(
        onRefresh: _fakeRefresh,
        child: Scrollbar(
          controller: _scrollController,
          thumbVisibility: true,
          child: ListView(
            controller: _scrollController,
            padding: const EdgeInsets.all(16),
            children: [
              const SectionTitle('Material Progress Indicators'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: const [
                      Text('Circular'),
                      SizedBox(height: 8),
                      CircularProgressIndicator(),
                    ],
                  ),
                  Column(
                    children: [
                      const Text('Circular (determinate)'),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: 40,
                        height: 40,
                        child: CircularProgressIndicator(value: 0.1),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Linear (indet.)'),
                      SizedBox(height: 8),
                      SizedBox(
                        width: 120,
                        height: 15,
                        child: LinearProgressIndicator(
                          minHeight: 20,
                          backgroundColor: Colors.amber,
                          borderRadius: BorderRadius.circular(10),
                          value: 0.9,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              const Text('Interactive Linear Progress'),
              Slider(
                value: _linearValue,
                onChanged: (v) => setState(() => _linearValue = v),
              ),
              LinearProgressIndicator(value: _linearValue),

              const Divider(height: 32),

              const SectionTitle('Refresh Indicator (Pull Down)'),
              const Text('Pull the list to refresh...'),

              const Divider(height: 32),

              const SectionTitle('Cupertino Indicator (iOS)'),
              Row(
                children: const [
                  CupertinoActivityIndicator(),
                  SizedBox(width: 12),
                  Text('CupertinoActivityIndicator'),
                ],
              ),

              const Divider(height: 32),

              const SectionTitle('Percent Indicators'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircularPercentIndicator(
                    radius: 40.0,
                    lineWidth: 8.0,
                    percent: 0.7,
                    center: const Text('70%'),
                    progressColor: Colors.teal,
                  ),
                  LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width * 0.5,
                    lineHeight: 14.0,
                    percent: 0.42,
                    center: const Text('42%'),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: Colors.orange,
                  ),
                ],
              ),

              const Divider(height: 32),

              const SectionTitle('SpinKit Animations'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SpinKitCircle(size: 30.0, color: Colors.teal),
                  SpinKitFadingCube(size: 30.0, color: Colors.teal),
                  SpinKitThreeBounce(size: 30.0, color: Colors.teal),
                ],
              ),

              const Divider(height: 32),

              const SectionTitle('Shimmer Placeholder'),
              Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                child: Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),

              const Divider(height: 32),

              const SectionTitle('Page Indicator (SmoothPageIndicator)'),
              SizedBox(
                height: 180,
                child: Column(
                  children: [
                    Expanded(
                      child: PageView(
                        controller: _pageController,
                        children: List.generate(
                          3,
                          (i) => Container(
                            margin: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.teal.shade100.withOpacity(
                                0.6 * (i + 1) / 3,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(child: Text('Page ${i + 1}')),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    SmoothPageIndicator(
                      controller: _pageController,
                      count: 3,
                      effect: const WormEffect(dotHeight: 8, dotWidth: 8),
                    ),
                  ],
                ),
              ),

              const Divider(height: 32),

              const SectionTitle('Stepper Indicator'),
              Stepper(
                currentStep: _currentStep,
                onStepContinue: () {
                  if (_currentStep < 2) setState(() => _currentStep += 1);
                },
                onStepCancel: () {
                  if (_currentStep > 0) setState(() => _currentStep -= 1);
                },
                steps: const [
                  Step(title: Text('Step 1'), content: Text('Start')),
                  Step(title: Text('Step 2'), content: Text('Processing')),
                  Step(title: Text('Step 3'), content: Text('Done')),
                ],
              ),

              const Divider(height: 32),

              const SectionTitle('Button Loader'),
              ElevatedButton(
                onPressed: _isLoadingButton ? null : _simulateButtonAction,
                child: _isLoadingButton
                    ? const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text('Submit'),
              ),

              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String text;
  const SectionTitle(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: Theme.of(
          context,
        ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
