import 'package:butter/butter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/init_model.dart';

//
// BaseStatelessPageView is a breaking replacement of BasePageView to distinguish
// it from BaseStatefulPageView that allows you to handle page cycles.
//
class InitPage extends BaseStatelessPageView {
  final InitModel? model;

  InitPage({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this._body(),
    );
  }

  _body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: 300,
            child: Image.asset('assets/logo.png'),
          ),
          Container(
            child: ElevatedButton(
              child: Text('Proceed'),
              onPressed: this.model!.proceed,
            ),
          ),
        ],
      ),
    );
  }
}
