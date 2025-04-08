import 'package:flutter/material.dart';
import 'messageScreen.dart';

class InputScreen extends StatefulWidget {
  static const String id = "InputScreen";
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    final textMessageController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: TextField(
                controller: textMessageController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
                decoration: const InputDecoration(
                  hintText: 'Input Text',
                  hintStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  filled: true,
                  fillColor: Colors.white10,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30.0),
                elevation: 8.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DisplayText(
                                message:
                                    textMessageController.text.toString())));
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: const Text(
                    'Show',
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 18.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class InputScreen extends StatelessWidget {
//   static const String id = "InputScreen";
//   const InputScreen({super.key});
//
//
//   @override
//   Widget build(BuildContext context) {
//     late String _textMessage;
//     final textMessageController = TextEditingController();
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Container(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 24.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               const SizedBox(
//                 height: 48.0,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 16.0),
//                 child: TextField(
//                     onChanged: (String value) {
//                       _textMessage = value;
//                     },
//                     textAlign: TextAlign.center,
//                     keyboardType: TextInputType.emailAddress,
//                     decoration: const InputDecoration(
//                       hintText: 'Input Text',
//                       hintStyle: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.bold),
//                       filled: true,
//                       fillColor: Colors.grey,
//                       contentPadding: EdgeInsets.symmetric(
//                           vertical: 10.0, horizontal: 20.0),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(32.0)),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderSide:
//                         BorderSide(color: Colors.blueAccent, width: 1.0),
//                         borderRadius: BorderRadius.all(Radius.circular(32.0)),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide:
//                         BorderSide(color: Colors.blueAccent, width: 2.0),
//                         borderRadius: BorderRadius.all(Radius.circular(32.0)),
//                       ),
//                     ),),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 16.0),
//                 child: Material(
//                   color: Colors.black,
//                   borderRadius: BorderRadius.circular(30.0),
//                   elevation: 8.0,
//                   child: MaterialButton(
//                     onPressed: () async {
//                       setState(() {
//
//                       });
//                       try {
//                       } catch (e) {
//                         print(e);
//                       }
//                     },
//                     minWidth: 200.0,
//                     height: 42.0,
//                     child: const Text(
//                       'Register',
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
