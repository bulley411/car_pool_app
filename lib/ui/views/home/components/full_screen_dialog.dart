import 'package:flutter/material.dart';

// this class defines the full-screen semi-transparent modal dialog
// by extending the ModalRoute class
class FullScreenModal extends ModalRoute {
  // variables passed from the parent widget

  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => false;

  @override
  Color get barrierColor => Colors.black.withOpacity(0.6);

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'title',
              style: const TextStyle(color: Colors.white, fontSize: 40.0),
            ),
            const SizedBox(
              height: 15,
            ),
            Text('description',
                style: const TextStyle(color: Colors.white, fontSize: 18)),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              onPressed: () {
                // close the modal dialog and return some data if needed
                Navigator.pop(context, [
                  'This message was padded from the modal',
                  'KindaCode.com'
                ]);
              },
              icon: const Icon(Icons.close),
              label: const Text('Close'),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    // add fade animation
    return FadeTransition(
      opacity: animation,
      // add slide animation
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, -1),
          end: Offset.zero,
        ).animate(animation),
        // add scale animation
        child: ScaleTransition(
          scale: animation,
          child: child,
        ),
      ),
    );
  }
}

// this method shows the modal dialog
dynamic showModal(BuildContext context) async {
  // show the modal dialog and pass some data to it
  final result = await Navigator.of(context).push(FullScreenModal());

  // print the data returned by the modal if any
  debugPrint(result.toString());
}
