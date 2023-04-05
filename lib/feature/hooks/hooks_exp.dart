import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HooksExpPage extends HookWidget {
  const HooksExpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("-----Build Called-------");

    ///when we use these hook it will rebuild our entire build method
    //final count = useState(0);

    final count = useValueNotifier(0);

    final scrollController = useScrollController();

    final fabAnimationController = useAnimationController(
        duration: const Duration(milliseconds: 500), initialValue: 1);
    useEffect(
      () {
        scrollController.addListener(() {
          switch(scrollController.position.userScrollDirection) {
            case ScrollDirection.forward:
              fabAnimationController.forward();
              break;
            case ScrollDirection.reverse:
              fabAnimationController.reverse();
              break;
            case ScrollDirection.idle:
              break;
          }

        });
        return () {
          debugPrint("dispose State");
        };
      },
      const [],
    );

    final animationController = useAnimationController(
      duration: const Duration(seconds: 2),
    )..forward();

    final Animation<double> animation = useMemoized(() {
      return Tween<double>(begin: 15, end: 25).animate(animationController);
    });




    return Scaffold(
      appBar: AppBar(
        title: const Text("Hooks Exp"),
      ),
      floatingActionButton: FadeTransition(
        opacity: fabAnimationController,
        child: ScaleTransition(
          scale: fabAnimationController,
          child: FloatingActionButton.extended(
            label: const Text('Floating Action Button'),
            onPressed: () {},
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HookBuilder(builder: (context) {
              useValueListenable(count);
              return Text(count.value.toString());
            }),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                count.value++;
              },
              child: const Text("Increment Data"),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                count.value--;
              },
              child: const Text("Decrement Data"),
            ),
            const SizedBox(height: 30.0),
            AnimatedBuilder(
              animation: animation,
              builder: (context, child) {
                return Text(
                  "Animated Text",
                  style: TextStyle(fontSize: animation.value),
                );
              },
            ),
            const SizedBox(height: 30.0),
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const Card(
                      child: FittedBox(
                        child: FlutterLogo(),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
