import 'effects/attention_seekers.dart';
import 'effects/back.dart';
import 'effects/bouncing.dart';
import 'effects/fading_entrances.dart';
import 'effects/fading_exits.dart';
import 'effects/flippers.dart';
import 'effects/lightspeed.dart';
import 'effects/rotating.dart';
import 'effects/sliding.dart';
import 'effects/specials.dart';
import 'effects/zooming.dart';
import 'keyframes.dart';

/// The [Animate.css](https://animate.style/) effects, by their original names.
enum AnimateStyle {
  // Attention seekers.
  /// Animate.css `bounce`.
  bounce(bounceEffect),

  /// Animate.css `flash`.
  flash(flashEffect),

  /// Animate.css `pulse`.
  pulse(pulseEffect),

  /// Animate.css `rubberBand`.
  rubberBand(rubberBandEffect),

  /// Animate.css `shakeX`.
  shakeX(shakeXEffect),

  /// Animate.css `shakeY`.
  shakeY(shakeYEffect),

  /// Animate.css `headShake`.
  headShake(headShakeEffect),

  /// Animate.css `swing`.
  swing(swingEffect),

  /// Animate.css `tada`.
  tada(tadaEffect),

  /// Animate.css `wobble`.
  wobble(wobbleEffect),

  /// Animate.css `jello`.
  jello(jelloEffect),

  /// Animate.css `heartBeat`.
  heartBeat(heartBeatEffect),

  // Back entrances and exits.
  /// Animate.css `backInDown`.
  backInDown(backInDownEffect),

  /// Animate.css `backInLeft`.
  backInLeft(backInLeftEffect),

  /// Animate.css `backInRight`.
  backInRight(backInRightEffect),

  /// Animate.css `backInUp`.
  backInUp(backInUpEffect),

  /// Animate.css `backOutDown`.
  backOutDown(backOutDownEffect),

  /// Animate.css `backOutLeft`.
  backOutLeft(backOutLeftEffect),

  /// Animate.css `backOutRight`.
  backOutRight(backOutRightEffect),

  /// Animate.css `backOutUp`.
  backOutUp(backOutUpEffect),

  // Bouncing entrances and exits.
  /// Animate.css `bounceIn`.
  bounceIn(bounceInEffect),

  /// Animate.css `bounceInDown`.
  bounceInDown(bounceInDownEffect),

  /// Animate.css `bounceInLeft`.
  bounceInLeft(bounceInLeftEffect),

  /// Animate.css `bounceInRight`.
  bounceInRight(bounceInRightEffect),

  /// Animate.css `bounceInUp`.
  bounceInUp(bounceInUpEffect),

  /// Animate.css `bounceOut`.
  bounceOut(bounceOutEffect),

  /// Animate.css `bounceOutDown`.
  bounceOutDown(bounceOutDownEffect),

  /// Animate.css `bounceOutLeft`.
  bounceOutLeft(bounceOutLeftEffect),

  /// Animate.css `bounceOutRight`.
  bounceOutRight(bounceOutRightEffect),

  /// Animate.css `bounceOutUp`.
  bounceOutUp(bounceOutUpEffect),

  // Fading entrances.
  /// Animate.css `fadeIn`.
  fadeIn(fadeInEffect),

  /// Animate.css `fadeInDown`.
  fadeInDown(fadeInDownEffect),

  /// Animate.css `fadeInDownBig`.
  fadeInDownBig(fadeInDownBigEffect),

  /// Animate.css `fadeInLeft`.
  fadeInLeft(fadeInLeftEffect),

  /// Animate.css `fadeInLeftBig`.
  fadeInLeftBig(fadeInLeftBigEffect),

  /// Animate.css `fadeInRight`.
  fadeInRight(fadeInRightEffect),

  /// Animate.css `fadeInRightBig`.
  fadeInRightBig(fadeInRightBigEffect),

  /// Animate.css `fadeInUp`.
  fadeInUp(fadeInUpEffect),

  /// Animate.css `fadeInUpBig`.
  fadeInUpBig(fadeInUpBigEffect),

  /// Animate.css `fadeInTopLeft`.
  fadeInTopLeft(fadeInTopLeftEffect),

  /// Animate.css `fadeInTopRight`.
  fadeInTopRight(fadeInTopRightEffect),

  /// Animate.css `fadeInBottomLeft`.
  fadeInBottomLeft(fadeInBottomLeftEffect),

  /// Animate.css `fadeInBottomRight`.
  fadeInBottomRight(fadeInBottomRightEffect),

  // Fading exits.
  /// Animate.css `fadeOut`.
  fadeOut(fadeOutEffect),

  /// Animate.css `fadeOutDown`.
  fadeOutDown(fadeOutDownEffect),

  /// Animate.css `fadeOutDownBig`.
  fadeOutDownBig(fadeOutDownBigEffect),

  /// Animate.css `fadeOutLeft`.
  fadeOutLeft(fadeOutLeftEffect),

  /// Animate.css `fadeOutLeftBig`.
  fadeOutLeftBig(fadeOutLeftBigEffect),

  /// Animate.css `fadeOutRight`.
  fadeOutRight(fadeOutRightEffect),

  /// Animate.css `fadeOutRightBig`.
  fadeOutRightBig(fadeOutRightBigEffect),

  /// Animate.css `fadeOutUp`.
  fadeOutUp(fadeOutUpEffect),

  /// Animate.css `fadeOutUpBig`.
  fadeOutUpBig(fadeOutUpBigEffect),

  /// Animate.css `fadeOutTopLeft`.
  fadeOutTopLeft(fadeOutTopLeftEffect),

  /// Animate.css `fadeOutTopRight`.
  fadeOutTopRight(fadeOutTopRightEffect),

  /// Animate.css `fadeOutBottomRight`.
  fadeOutBottomRight(fadeOutBottomRightEffect),

  /// Animate.css `fadeOutBottomLeft`.
  fadeOutBottomLeft(fadeOutBottomLeftEffect),

  // Flippers.
  /// Animate.css `flip`.
  flip(flipEffect),

  /// Animate.css `flipInX`.
  flipInX(flipInXEffect),

  /// Animate.css `flipInY`.
  flipInY(flipInYEffect),

  /// Animate.css `flipOutX`.
  flipOutX(flipOutXEffect),

  /// Animate.css `flipOutY`.
  flipOutY(flipOutYEffect),

  // Lightspeed.
  /// Animate.css `lightSpeedInRight`.
  lightSpeedInRight(lightSpeedInRightEffect),

  /// Animate.css `lightSpeedInLeft`.
  lightSpeedInLeft(lightSpeedInLeftEffect),

  /// Animate.css `lightSpeedOutRight`.
  lightSpeedOutRight(lightSpeedOutRightEffect),

  /// Animate.css `lightSpeedOutLeft`.
  lightSpeedOutLeft(lightSpeedOutLeftEffect),

  // Rotating entrances and exits.
  /// Animate.css `rotateIn`.
  rotateIn(rotateInEffect),

  /// Animate.css `rotateInDownLeft`.
  rotateInDownLeft(rotateInDownLeftEffect),

  /// Animate.css `rotateInDownRight`.
  rotateInDownRight(rotateInDownRightEffect),

  /// Animate.css `rotateInUpLeft`.
  rotateInUpLeft(rotateInUpLeftEffect),

  /// Animate.css `rotateInUpRight`.
  rotateInUpRight(rotateInUpRightEffect),

  /// Animate.css `rotateOut`.
  rotateOut(rotateOutEffect),

  /// Animate.css `rotateOutDownLeft`.
  rotateOutDownLeft(rotateOutDownLeftEffect),

  /// Animate.css `rotateOutDownRight`.
  rotateOutDownRight(rotateOutDownRightEffect),

  /// Animate.css `rotateOutUpLeft`.
  rotateOutUpLeft(rotateOutUpLeftEffect),

  /// Animate.css `rotateOutUpRight`.
  rotateOutUpRight(rotateOutUpRightEffect),

  // Sliding entrances and exits.
  /// Animate.css `slideInDown`.
  slideInDown(slideInDownEffect),

  /// Animate.css `slideInLeft`.
  slideInLeft(slideInLeftEffect),

  /// Animate.css `slideInRight`.
  slideInRight(slideInRightEffect),

  /// Animate.css `slideInUp`.
  slideInUp(slideInUpEffect),

  /// Animate.css `slideOutDown`.
  slideOutDown(slideOutDownEffect),

  /// Animate.css `slideOutLeft`.
  slideOutLeft(slideOutLeftEffect),

  /// Animate.css `slideOutRight`.
  slideOutRight(slideOutRightEffect),

  /// Animate.css `slideOutUp`.
  slideOutUp(slideOutUpEffect),

  // Specials.
  /// Animate.css `hinge`.
  hinge(hingeEffect),

  /// Animate.css `jackInTheBox`.
  jackInTheBox(jackInTheBoxEffect),

  /// Animate.css `rollIn`.
  rollIn(rollInEffect),

  /// Animate.css `rollOut`.
  rollOut(rollOutEffect),

  // Zooming entrances and exits.
  /// Animate.css `zoomIn`.
  zoomIn(zoomInEffect),

  /// Animate.css `zoomInDown`.
  zoomInDown(zoomInDownEffect),

  /// Animate.css `zoomInLeft`.
  zoomInLeft(zoomInLeftEffect),

  /// Animate.css `zoomInRight`.
  zoomInRight(zoomInRightEffect),

  /// Animate.css `zoomInUp`.
  zoomInUp(zoomInUpEffect),

  /// Animate.css `zoomOut`.
  zoomOut(zoomOutEffect),

  /// Animate.css `zoomOutDown`.
  zoomOutDown(zoomOutDownEffect),

  /// Animate.css `zoomOutLeft`.
  zoomOutLeft(zoomOutLeftEffect),

  /// Animate.css `zoomOutRight`.
  zoomOutRight(zoomOutRightEffect),

  /// Animate.css `zoomOutUp`.
  zoomOutUp(zoomOutUpEffect);

  const AnimateStyle(this.track);

  /// The keyframes.
  final AnimateKeyframeTrack track;

  /// Whether this is an exit, using the same `[class*='Out']` test as
  /// Animate.css.
  bool get isExit => name.contains('Out');
}
