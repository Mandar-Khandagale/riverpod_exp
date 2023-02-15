import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UsingLayoutBuilder extends StatelessWidget {
  const UsingLayoutBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext ctx, BoxConstraints constraints) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Layout Builder",
              style: TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                alignment: Alignment.center,
                height: constraints.maxHeight * 0.3,
                margin: const EdgeInsets.fromLTRB(10.0, 0.0,10.0,0.0),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Text(
                  'Left Wide Screen',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

            ],
          ),

          // LayoutBuilder(
          //   builder: (BuildContext ctx, BoxConstraints constraints) {
          //     // if the screen width >= 480 i.e Wide Screen
          //     if (constraints.maxWidth >= 600) {
          //       return Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: <Widget>[
          //           Container(
          //             padding: const EdgeInsets.symmetric(horizontal: 8),
          //             alignment: Alignment.center,
          //             height: constraints.maxHeight * 0.3,
          //             margin: const EdgeInsets.fromLTRB(10.0, 0.0,10.0,0.0),
          //             decoration: const BoxDecoration(
          //               color: Colors.red,
          //               borderRadius: BorderRadius.all(Radius.circular(10)),
          //             ),
          //             child: Text(
          //               'Left Wide Screen',
          //               style: TextStyle(
          //                 fontSize: 14,
          //                 fontWeight: FontWeight.bold,
          //                 color: Colors.white,
          //               ),
          //             ),
          //           ),
          //           Container(
          //             padding: const EdgeInsets.symmetric(horizontal: 8),
          //             alignment: Alignment.center,
          //             height: constraints.maxHeight * 0.1,
          //             margin: const EdgeInsets.fromLTRB(10.0, 0.0,10.0,0.0),
          //             decoration: const BoxDecoration(
          //               color: Colors.orange,
          //               borderRadius: BorderRadius.all(Radius.circular(10)),
          //             ),
          //             child: Text(
          //               'Right Wide Screen',
          //               style: TextStyle(
          //                 fontSize: 14,
          //                 fontWeight: FontWeight.bold,
          //                 color: Colors.white,
          //               ),
          //             ),
          //           ),
          //         ],
          //       );
          //
          //       // If screen size is < 480
          //     } else {
          //       return Container(
          //         alignment: Alignment.center,
          //         height: constraints.maxHeight * 0.3,
          //         margin: const EdgeInsets.fromLTRB(10.0, 0.0,10.0,0.0),
          //         decoration: const BoxDecoration(
          //           color: Colors.cyan,
          //           borderRadius: BorderRadius.all(Radius.circular(10)),
          //         ),
          //         child: Text(
          //           'Normal Screen',
          //           style: TextStyle(
          //             fontSize: 18,
          //             fontWeight: FontWeight.bold,
          //             color: Colors.white,
          //           ),
          //         ),
          //       );
          //     }
          //   },
          // ),
        );
      }
    );
  }
}
