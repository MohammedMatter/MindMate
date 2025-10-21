import 'package:flutter/widgets.dart';

class SplashLogoAnimation extends StatelessWidget {
  const SplashLogoAnimation({
    super.key,
    required AnimationController animationController,
    required this.moveAnimation,
    required Animation<double> rotationAnimation,
    required this.height,
    required this.width,
  }) : _animationController = animationController,
       _rotationAnimation = rotationAnimation;

  final AnimationController _animationController;
  final Animation<double> moveAnimation;
  final Animation<double> _rotationAnimation;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: _animationController,
            builder:
                (context, child) => Transform.translate(
                  offset: Offset(moveAnimation.value, 0),
                  child: Transform.rotate(
                    angle: _rotationAnimation.value,
                    child: Container(
                      alignment: Alignment.bottomRight,
                      height: height / 7,
                      width: width / 5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          alignment: Alignment.centerRight,
                          image: AssetImage('assets/images/logo/icon_mark.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
          ),
          Container(
            height: height / 5,
            width: width / 2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logo/logo.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
