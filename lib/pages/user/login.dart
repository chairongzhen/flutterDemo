import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FocusNode _focusNodeUserName = FocusNode();
  FocusNode _focusNodePassWord = FocusNode();
  TextEditingController _userNameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var _password = '';
  var _username = '';
  var _isShowPwd = false;
  var _isShowClear = false;

  @override
  void initState() {
    _focusNodeUserName.addListener(_focusNodeListener);
    _focusNodePassWord.addListener(_focusNodeListener);
    _userNameController.addListener(() {
      print(_userNameController.text);
      if (_userNameController.text.length > 0) {
        _isShowClear = true;
      } else {
        _isShowClear = false;
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _focusNodeUserName.removeListener(_focusNodeListener);
    _focusNodePassWord.removeListener(_focusNodeListener);
    _userNameController.dispose();
    super.dispose();
  }

  Future _focusNodeListener() async {
    if (_focusNodeUserName.hasFocus) {
      print("username focused");
      _focusNodePassWord.unfocus();
    }

    if (_focusNodePassWord.hasFocus) {
      print("password focused");
      _focusNodeUserName.unfocus();
    }
  }

  String validateUserName(value) {
    RegExp exp = RegExp(
        r'^((13[0-9])|(14[0-9])|(15[0-9])|(16[0-9])|(17[0-9])|(18[0-9])|(19[0-9]))\d{8}$');
    if (value.isEmpty) {
      return 'uername can not empty';
    } else if (!exp.hasMatch(value)) {
      return 'input the right phone num';
    }
    return null;
  }

  String validatePassWord(value) {
    if (value.isEmpty) {
      return '密码不能为空';
    } else if (value.trim().length< 8) {
      return '密码长度不正确';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    print(ScreenUtil().scaleHeight);
    Widget logoImageArea = new Container(
      alignment: Alignment.topCenter,
      child: ClipOval(
        child: Image.asset(
          "assets/images/logo.png",
          height: 100,
          width: 100,
          fit: BoxFit.cover,
        ),
      ),
    );
    Widget inputTextArea = new Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white),
      child: new Form(
        key: _formKey,
        child: new Column(
          children: <Widget>[
            new TextFormField(
              controller: _userNameController,
              focusNode: _focusNodeUserName,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "用户名",
                hintText: "请输入手机号",
                prefixIcon: Icon(Icons.person),
                suffixIcon: (_isShowClear)
                    ? IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {
                          _userNameController.clear();
                        },
                      )
                    : null,
              ),
              validator: validateUserName,
              onSaved: (String value) {
                _username = value;
              },
            ),
            TextFormField(
              focusNode: _focusNodePassWord,
              decoration: InputDecoration(
                labelText: "密码",
                hintText: "请输入密码",
                prefixIcon: Icon(Icons.lock),
                // 是否显示密码
                suffixIcon: IconButton(
                  icon: Icon((_isShowPwd) ? Icons.visibility : Icons.visibility_off),
                  // 点击改变显示或隐藏密码
                  onPressed: (){
                    setState(() {
                      _isShowPwd = !_isShowPwd;
                    });
                  },
                )
              ),
              obscureText: !_isShowPwd,
              //密码验证
              validator:validatePassWord, 
              //保存数据
              onSaved: (String value){
                _password = value;
              },
            )
          ],
        ),
      ),
    );
    // 登录按钮区域
    Widget loginButtonArea = new Container(
      margin: EdgeInsets.only(left: 20,right: 20),
      height: 45.0,
      child: new RaisedButton(
        color: Colors.blue[300],
        child: Text(
          "登录",
          style: Theme.of(context).primaryTextTheme.headline,
        ),
        // 设置按钮圆角
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        onPressed: (){
          //点击登录按钮，解除焦点，回收键盘
          _focusNodePassWord.unfocus();
          _focusNodeUserName.unfocus();
          print("$_username + $_password");
          if (_formKey.currentState.validate()) {
            //只有输入通过验证，才会执行这里
            _formKey.currentState.save();
            //todo 登录操作
            print("$_username + $_password");
          }
        },
      ),
    );
    //第三方登录区域
    Widget thirdLoginArea = new Container(
      margin: EdgeInsets.only(left: 20,right: 20),
      child: new Column(
        children: [
          new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 80,
                height: 1.0,
                color: Colors.grey,
                
              ),
              Text(
                '第三方登录'
              ),
              Container(
                width: 80,
                height: 1.0,
                color: Colors.grey,
              ),
            ],
          ),
          new SizedBox(
            height: 18,
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                color: Colors.green[200],
                // 第三方库icon图标
                icon: Icon(FontAwesomeIcons.weixin),
                iconSize: 40.0,
                onPressed: (){
                },
              ),
              IconButton(
                color: Colors.green[200],
                icon: Icon(FontAwesomeIcons.weibo),
                iconSize: 40.0,
                onPressed: (){
                },
              ),
              IconButton(
                color: Colors.green[200],
                icon: Icon(FontAwesomeIcons.qq),
                iconSize: 40.0,
                onPressed: (){
                },
              )
            ],
          )
        ],
      ),
    );
    //忘记密码  立即注册
    Widget bottomArea = new Container(
      margin: EdgeInsets.only(right: 20,left: 30),
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlatButton(
            child: Text(
              "忘记密码?",
              style: TextStyle(
                color: Colors.blue[400],
                fontSize: 16.0,
              ),
            ),
            //忘记密码按钮，点击执行事件
            onPressed: (){
            },
          ),
          FlatButton(
            child: Text(
              "快速注册",
              style: TextStyle(
                color: Colors.blue[400],
                fontSize: 16.0,
              ),  
            ),
            //点击快速注册、执行事件
            onPressed: (){
            },
          )
        ],
      ),
    );
     return Scaffold(
      backgroundColor: Colors.white,
      // 外层添加一个手势，用于点击空白部分，回收键盘
      body: new GestureDetector(
        onTap: (){
          // 点击空白区域，回收键盘
          print("点击了空白区域");
          _focusNodePassWord.unfocus();
          _focusNodeUserName.unfocus();
        },
        child: new ListView(
          children: [
          new SizedBox(height: ScreenUtil().setHeight(80),),
          logoImageArea,
          new SizedBox(height: ScreenUtil().setHeight(70),),
          inputTextArea,
          new SizedBox(height: ScreenUtil().setHeight(80),),
          loginButtonArea,
          new SizedBox(height: ScreenUtil().setHeight(60),),
          thirdLoginArea,
          new SizedBox(height: ScreenUtil().setHeight(60),),
          bottomArea,
        ],
        ),
      ),
    );
  }
}
