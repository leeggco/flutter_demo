import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0,
      ),
      body: Theme(
        // 覆盖主题颜色, Theme.of(context).copyWith 局部覆盖其他的保留
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
        ),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // TextFieldDemo()
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  String username, password;
  bool autovalidate = false;

  // void表示方法返回空值
  void submitRegisterForm() {
    // 如果验证通过，再执行下一步
    if (registerFormKey.currentState.validate()) {
      registerFormKey.currentState.save();

      debugPrint('username:$username');
      debugPrint('password:$password');

      // 显示snackbar
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Registering...'),
        )
      );
    } else {
      setState(() {
        autovalidate = true;
      });
    }
  }
  // 表单校验
  String validatorUsername(value) {
    if (value.isEmpty) {
      return 'Username is required.';
    }

    return null;
  }
  // 表单校验
  String validatorPassword(value) {
    if (value.isEmpty) {
      return 'Password is required.';
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
              helperText: ''
            ),
            // 保存时会执行
            onSaved: (value) {
              username = value;
            },
            validator: validatorUsername,
            autovalidate: autovalidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              helperText: ''
            ),
            // 保存时会执行
            onSaved: (value) {
              password = value;
            },
            validator: validatorPassword,
            autovalidate: autovalidate,
          ),
          SizedBox(height: 32,),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text(
                'Register',
                style: TextStyle(color: Colors.white),
              ),
              elevation: 0.0,
              onPressed: submitRegisterForm,
            ),
          )
        ],
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
  @override
  void initState() {
    super.initState();
    // textEditingController.text = 'g2';

    textEditingController.addListener(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      // onChanged: (value) {

      // },
      onSubmitted: (value) {

      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'Title',
        // 默认提示
        hintText: 'Enter the post title',
        // 去除边框
        // border: InputBorder.none,
        // 环绕边框
        // border: OutlineInputBorder(),
        // 背景色
        filled: true,
      ),
    );
  }
}

