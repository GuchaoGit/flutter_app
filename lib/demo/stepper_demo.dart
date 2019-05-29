import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StepperDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(
                primaryColor: Colors.black,
              ),
              child: Stepper(
                currentStep: _currentStep,
                onStepTapped: (index) {
                  setState(() {
                    _currentStep = index;
                  });
                },
                onStepContinue: () {
                  setState(() {
                    _currentStep =
                        _currentStep == 2 ? _currentStep : _currentStep + 1;
                  });
                },
                onStepCancel: () {
                  setState(() {
                    _currentStep =
                        _currentStep > 0 ? _currentStep - 1 : _currentStep;
                  });
                },
                steps: [
                  Step(
                    title: Text('Login'),
                    subtitle: Text("Login first"),
                    content: Text(
                        'You shoud login in first ,or you will not use this function'),
                    isActive: _currentStep == 0, //是否是激活状态
                  ),
                  Step(
                    title: Text('Choose Plan'),
                    subtitle: Text("Choose your plan."),
                    content: Text('Please choose the plan you will executing'),
                    isActive: _currentStep == 1, //是否是激活状态
                  ),
                  Step(
                    title: Text('Confirm payment'),
                    subtitle: Text("Confirm your payment method."),
                    content: Text(
                        'Please Confirm your payment method,then pay for the plan'),
                    isActive: _currentStep == 2, //是否是激活状态
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
