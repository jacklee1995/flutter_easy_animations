## 1.0.0

All effects rewritten from the Animate.css 4.1.1 keyframes.

### Added

- `AnimateStyle` enum with all 97 effects.
- `AnimateStyled` widget. Respects the platform reduced-motion setting;
  disable with `respectReducedMotion: false`.
- `AnimateKeyframe`, `AnimateKeyframeStop`, `AnimateKeyframeTrack`,
  `KeyframeTransition`, `KeyframeTransform`, `CssCurves`, `degrees` for
  custom effects.
- `track.durationScale` with the per-effect duration multiplier.

### Deprecated

- `AnimateStyles`. Forwards to `AnimateStyled`; removed in 2.0.0.

### Fixed

- `rotateOut` and `zoomOut*` faded in instead of out.
- `zoomOutDown`/`zoomOutLeft`/`zoomOutRight`/`zoomOutUp` moved in the wrong
  direction.
- `rollIn`/`rollOut` translated by 1px instead of 100%.
- `flash` never went above 50% opacity.
- `bounce` scaled from zero instead of bouncing; `swing` used the wrong
  origin.

Not modelled: `visibility` on `slide*`, `backface-visibility` on flippers.

### Changed

- Requires Flutter 3.47 / Dart 3.13.
- `flutter_lints` 6, strict analysis.
- Removed invalid `auth` key from pubspec; added `issue_tracker`, `topics`.
- CI: format, analyze, test, publish dry-run, pana.
- Example is a gallery of all effects.
- Fixed README import path and API signatures.

## 0.0.2

一些动画从原先使用的带有弹跳的 [Curves.elasticOut](https://flutter.github.io/assets-for-api-docs/assets/animation/curve_elastic_out.mp4) 曲线修改比较平滑的 [Curves.easeInOut](https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_in_out.mp4) 曲线。包括：

 - backInDown;
 - backInLeft;
 - backInRight;
 - backInUp;
 - rotateIn
 - rotateInDownLeft
 - rotateInDownRight
 - rotateInUpLeft
 - rotateInUpRight
 - zoomIn
 - zoomInDown
 - zoomInLeft
 - zoomInRight
 - zoomInUp

## 0.0.1

Add AnimateStyles class.
