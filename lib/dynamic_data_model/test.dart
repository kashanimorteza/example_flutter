import 'api.dart';

void main() {
  MyApi api = new MyApi('http://0.0.0.0:8000');
  var a = api.getSchema('model_xray_server');
  print('a');
  print(a);
  Test t = new Test();
  t
      .test()
      .then((data) {
        print(data);
      })
      .catchError((error) {})
      .whenComplete(() {});
}

//----------------------------------------------- [ MyApi ]
class Test {
  Future test() async {
    MyApi api = new MyApi('http://0.0.0.0:8000');
    var model = await api.getSchema('model_xray_server');
    return model;
  }
}
