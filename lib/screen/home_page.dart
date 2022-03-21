import 'package:apicall/screen/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomeController _controller = Get.put(HomeController());
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API CALL"),
      ),
      body: SafeArea(
        child:GestureDetector(
          onTap: (){
            Focus.of(context).requestFocus(FocusNode());

          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),

            child: SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
child: Text("Welcome"),
                  ),
                  const SizedBox(height: 30),
                  Form(
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Email'),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  ),
                              child: TextFormField(
                                controller: _emailcontroller,
                                onChanged: _controller.updateEmail,
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                // controller: _controller.email = _emailController.text,
                                decoration: const InputDecoration(
                                    floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    contentPadding: EdgeInsets.only(left: 10),
                                    hintText: 'Enter Email'),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Password'),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                 ),
                              child: Obx(() => TextFormField(
                                controller: _passwordcontroller,
                                onChanged: _controller.updatepasssword,
                                obscureText: _controller.passwordvisibility.value,
                                decoration:  InputDecoration(
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          _controller.updatepasswordvisibility();
                                        }, icon: _controller.passwordvisibility.value
                                        ? Icon(Icons.visibility): Icon(Icons.visibility_off)
                                    ),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    contentPadding: EdgeInsets.only(left: 10),
                                    hintText: 'Enter Password'),
                              )
                              ),
                            ),
                            SizedBox(height: 50,),
                            GestureDetector(
                                onTap: () {

                                },
                                child: GestureDetector(
                                    onTap: () {
                                      if(_emailcontroller.text.trim().isEmpty) {
                                        ('Please Enter Email');
                                        return;
                                      }
                                      if(_passwordcontroller.text.trim().isEmpty) {
                                        ('Please Enter Password');
                                        return;
                                      }
                                      _controller.Initlogin();
                                    },

                                    child: Text('LOG IN',))),
                          ],
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),

        ) ,
      ),
    );
  }
}
