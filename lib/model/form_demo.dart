import 'package:flutter/material.dart';


class FormDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Theme(
        data:Theme.of(context).copyWith(
          primaryColor: Colors.black,
        ),
        //child: ThemeDemo(),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //TextFieldDemo()
              RegisterForm()
            ],
          ),
        ),
      )
    );
  }
}
class TextFieldDemo extends StatefulWidget{
  _TextFieldDemoState  createState() => _TextFieldDemoState();
}
class _TextFieldDemoState extends State<TextFieldDemo>{
  final textEditingController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    textEditingController.dispose();
    super.dispose();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //textEditingController.text = 'hi';
    textEditingController.addListener((){
      debugPrint('input: ${textEditingController.text}');
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      controller: textEditingController,
//      onChanged: (value){
//        debugPrint('input $value');
//      },
        decoration: InputDecoration(
          icon: Icon(Icons.subject),//左边的图标
          labelText: 'Text',//左上角的字
          hintText: '输入用户名',//下划上的字
          //border: InputBorder.none,//不要下划线
          //border: OutlineInputBorder(),//四周有线围住
          filled: true
        ),
    );
  }
}
class ThemeDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      //color: Theme.of(context).primaryColor,
      color: Theme.of(context).accentColor,
    );
  }
}
class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  String username,password;
  bool _autovalidate = false;
  void submitRegisterFrom(){
    //表单提交后自动验证
    if( registerFormKey.currentState.validate()) {
      registerFormKey.currentState.save();
      debugPrint('username: ${username}');
      debugPrint('password:${password}');
      Scaffold.of(context).showSnackBar(
        SnackBar(content:Text('Register.......')),
      );
    }
    else{
      setState(() {
        _autovalidate = true;
      });
    }
  }
  String validateUsername(value){
   if(value.isEmpty){
     return 'Username is required';
   }
   return null;
  }
  String validatePassword(value){
    if(value.isEmpty){
      return 'Password is required';
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              helperText: '',
            ),
            onSaved: (value){
              username = value;
            },
            validator: validateUsername,//验证方法
            autovalidate: _autovalidate,//自动验证
          ),
          TextFormField(
            obscureText: true, //输入的内容不会显示出来
            decoration: InputDecoration(
              labelText: 'Password',
              helperText: '',
            ),
            onSaved: (value){
              password = value;
            },//保存数据
              //验证表单
            validator: validatePassword,//验证方法
            autovalidate: _autovalidate,//自动验证
          ),
          SizedBox(
            height: 32.0,
          ),

          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              //color: Colors.blue,
              child: Text('Register',style: TextStyle(color: Colors.white),),
              elevation: 0.0,
              onPressed: submitRegisterFrom,
            ),
          )
        ],
      ),
    );
  }
}
