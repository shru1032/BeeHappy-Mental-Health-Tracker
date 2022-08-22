import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mental_health/app/sign_in/validators.dart';
import 'package:mental_health/common_widgets/form_submit_button.dart';
import 'package:mental_health/common_widgets/show_alert_dialog.dart';
import 'package:mental_health/services/auth.dart';
import 'package:provider/provider.dart';



enum EmailSignInFormType {signIn, register}

class EmailSignInForm extends StatefulWidget with EmailAndPasswordValidators{

  @override
  State<EmailSignInForm> createState() => _EmailSignInFormState();
}

class _EmailSignInFormState extends State<EmailSignInForm> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  bool _submitted = false;
  bool _isLoading = false;

  String get _email=>_emailController.text;
  String get _password=>_passwordController.text;
  EmailSignInFormType _formType = EmailSignInFormType.signIn;

  void _submit() async{
    setState((){
      _submitted = true;
      _isLoading = true;
    });
    try {
      final auth = Provider.of<AuthBase>(context, listen: false);
      if (_formType == EmailSignInFormType.signIn) {
        await auth.signInWithEmailAndPassword(_email, _password);
      } else {
        await auth.createUserWithEmailAndPassword(_email, _password);
      }
      Navigator.of(context).pop();
    } catch(e){
      showAlertDialog(
          context,
          title: 'Sign in failed',
          content: e.toString(),
          defaultActionText: 'OK'
      );
    } finally {
      setState((){
        _isLoading = false;
      });
    }
  }

  void _emailEditingComplete(){
    final newFocus = widget.emailValidator.isValid(_email) ?
        _passwordFocusNode : _emailFocusNode;
    FocusScope.of(context).requestFocus(_passwordFocusNode);
  }

  void _toggleFormType(){
    setState((){
      _formType=_formType==EmailSignInFormType.signIn ?
      EmailSignInFormType.register : EmailSignInFormType.signIn;
    });
    _emailController.clear();
    _passwordController.clear();
  }

  List<Widget> _buildChildren(){
    final primaryText=_formType==EmailSignInFormType.signIn ?
    'Sign In' : 'Create an account';
    final secondaryText=_formType==EmailSignInFormType.signIn ?
    'Need an account? Register' : 'Have an account? Sign In';

    bool submitEnabled = widget.emailValidator.isValid(_email) &&
        widget.passwordValidator.isValid(_password) && !_isLoading;

    return [
      _buildEmailTextField(),
      SizedBox(height: 8.0,),
      _buildPasswordTextField(),
      SizedBox(height: 16.0,),
      FormSubmitButton(
        text: primaryText,
        onPressed:()=>submitEnabled ? _submit : null,
      ),
      FlatButton(
        child: Text(secondaryText),
        onPressed: !_isLoading ? _toggleFormType : null,
      ),
    ];
  }

  TextField _buildPasswordTextField() {
    bool showErrorText = _submitted && !widget.passwordValidator.isValid(_password);
    return TextField(
      controller: _passwordController,
      focusNode: _passwordFocusNode,
      decoration: InputDecoration(
        labelText: "Password",
        errorText: showErrorText ? widget.inavlidPasswordErrorText : null,
        enabled: _isLoading == false,
      ),
      autocorrect: false,
      obscureText: true,
      textInputAction: TextInputAction.done,
      onChanged: (password) => _updateState(),
      onEditingComplete: _submit,
    );
  }

  TextField _buildEmailTextField() {
    bool showErrorText = _submitted && !widget.emailValidator.isValid(_email);
    return TextField(
      controller: _emailController,
      focusNode: _emailFocusNode,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "xyz@example.com",
        errorText: showErrorText ? widget.inavlidEmailErrorText : null,
        enabled: _isLoading == false,
      ),
      autocorrect: false,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      onChanged: (email) => _updateState(),
      onEditingComplete: _emailEditingComplete,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: _buildChildren(),
      ),
    );
  }

  void _updateState() {
    setState((){});
  }
}
