# Easy Animations

## 特点

该库提供各种预构建动画方法。这些动画涵盖了弹跳、闪烁、脉动、橡皮筋效果、抖动、摆动等多种效果，能够轻松地将引人入胜的动画效果融入其 Flutter 应用中。更多功能还在路上，敬请期待

## 入门指南

要开始使用 Easy Animations，请按照以下步骤操作：

1. 将 Easy Animations 包添加到您的 Flutter 项目中。
2. 导入包并访问 AnimateStyles 类。
3. 从 AnimateStyles 提供的可用动画方法中选择，以利用引人入胜的动画效果增强您的用户界面。

## 用法

以下是如何使用 AnimateStyles 中的 bounce 动画的示例：

```dart
import 'package:easy_animations/animate_styles.dart';

*// 实现弹跳动画*

AnimateStyles.bounce(

 animation: animationController, *// 提供您的动画控制器*

 child: YourWidget(), *// 您想要动画的小部件*

)
```

随意探索并尝试 AnimateStyles 类中提供的各种动画方法，通过动态和交互式的动画效果，使您的 Flutter 用户界面生动起来。

### 使用 AnimateStyles 类

AnimateStyles 类提供了一系列静态方法，每个方法都返回一个特定的动画小部件。这些方法可以直接在 Flutter 的 build 方法中使用，以给应用中的小部件添加动画效果。


| 方法名 | 返回类型 | 描述 |
| :- | :- | :- |
| `bounce` | `ScaleTransition` | 创建一个弹跳效果的动画，使小部件从缩小到原始大小弹跳。 |
| `flash` | `AnimatedBuilder` | 创建一个闪烁效果的动画，小部件的透明度在完全不透明和完全透明之间切换。 |
| `pulse` | `ScaleTransition` | 创建一个脉动效果的动画，小部件轻微放大然后恢复到原始大小。 |
| `rubberBand` | `AnimatedBuilder` | 创建一个橡皮筋效果的动画，小部件先拉伸再缩回。 |
| `shakeX` | `AnimatedBuilder` | 创建一个水平方向抖动的动画，小部件在水平方向上来回移动。 |
| `shakeY` | `AnimatedBuilder` | 创建一个垂直方向抖动的动画，小部件在垂直方向上来回移动。 |
| `headShake` | `AnimatedBuilder` | 创建一个头部摇摆效果的动画，小部件在水平方向上轻微摇摆。 |
| `swing` | `RotationTransition` | 创建一个摆动效果的动画，小部件围绕顶部中心点摆动。 |
| `tada` | `ScaleTransition` | 创建一个类似于“Tada!”庆祝动作的动画，小部件放大并轻微旋转。 |
| `wobble` | `AnimatedBuilder` | 创建一个摇晃效果的动画，小部件在不同方向上倾斜和扭曲。 |
| `jello` | `AnimatedBuilder` | 创建一个果冻效果的动画，小部件在水平方向上扭曲。 |
| `heartBeat` | `ScaleTransition` | 创建一个心跳效果的动画，小部件快速放大缩小。 |
| `backInDown` | `SlideTransition` | 创建一个从上方滑入并回弹的动画。 |
| `backInLeft` | `SlideTransition` | 创建一个从左侧滑入并回弹的动画。 |
| `backInRight` | `SlideTransition` | 创建一个从右侧滑入并回弹的动画。 |
| `backInUp` | `SlideTransition` | 创建一个从下方滑入并回弹的动画。 |
| `backOutDown` | `SlideTransition` | 创建一个向下滑出并回弹的动画。 |
| `backOutLeft` | `SlideTransition` | 创建一个向左滑出并回弹的动画。 |
| `backOutRight` | `SlideTransition` | 创建一个向右滑出并回弹的动画。 |
| `backOutUp` | `SlideTransition` | 创建一个向上滑出并回弹的动画。 |
| `bounceIn` | `ScaleTransition` | 创建一个弹跳进入的动画。 |
| `bounceInDown` | `SlideTransition` | 创建一个从上方弹跳进入的动画。 |
| `bounceInLeft` | `SlideTransition` | 创建一个从左侧弹跳进入的动画。 |
| `bounceInRight` | `SlideTransition` | 创建一个从右侧弹跳进入的动画。 |
| `bounceInUp` | `SlideTransition` | 创建一个从下方弹跳进入的动画。 |
| `bounceOut` | `ScaleTransition` | 创建一个弹跳退出的动画，小部件缩小并弹跳离开视图。 |
| `bounceOutDown` | `SlideTransition` | 创建一个向下弹跳退出的动画。 |
| `bounceOutLeft` | `SlideTransition` | 创建一个向左弹跳退出的动画。 |
| `bounceOutRight` | `SlideTransition` | 创建一个向右弹跳退出的动画。 |
| `bounceOutUp` | `SlideTransition` | 创建一个向上弹跳退出的动画。 |
| `fadeIn` | `FadeTransition` | 创建一个淡入效果的动画，小部件逐渐变为不透明。 |
| `fadeInDown` | `SlideTransition` | 创建一个淡入并向下滑动的动画。 |
| `fadeInDownBig` | `SlideTransition` | 创建一个淡入并向下滑动更远距离的动画。 |
| `fadeInLeft` | `SlideTransition` | 创建一个淡入并向左滑动的动画。 |
| `fadeInLeftBig` | `SlideTransition` | 创建一个淡入并向左滑动更远距离的动画。 |
| `fadeInRight` | `SlideTransition` | 创建一个淡入并向右滑动的动画。 |
| `fadeInRightBig` | `SlideTransition` | 创建一个淡入并向右滑动更远距离的动画。 |
| `fadeInUp` | `SlideTransition` | 创建一个淡入并向上滑动的动画。 |
| `fadeInUpBig` | `SlideTransition` | 创建一个淡入并向上滑动更远距离的动画。 |
| `fadeOut` | `FadeTransition` | 创建一个淡出效果的动画，小部件逐渐变为透明。 |
| `fadeOutDown` | `SlideTransition` | 创建一个淡出并向下滑动的动画。 |
| `fadeOutDownBig` | `SlideTransition` | 创建一个淡出并向下滑动更远距离的动画。 |
| `fadeOutLeft` | `SlideTransition` | 创建一个淡出并向左滑动的动画。 |
| `fadeOutLeftBig` | `SlideTransition` | 创建一个淡出并向左滑动更远距离的动画。 |
| `fadeOutRight` | `SlideTransition` | 创建一个淡出并向右滑动的动画。 |
| `fadeOutRightBig` | `SlideTransition` | 创建一个淡出并向右滑动更远距离的动画。 |
| `fadeOutUp` | `SlideTransition` | 创建一个淡出并向上滑动的动画。 |
| `fadeOutUpBig` | `SlideTransition` | 创建一个淡出并向上滑动更远距离的动画。 |
| `flipInX` | `AnimatedBuilder` | 创建一个沿X轴翻转进入的动画。 |
| `flipInY` | `AnimatedBuilder` | 创建一个沿Y轴翻转进入的动画。 |
| `flipOutX` | `AnimatedBuilder` | 创建一个沿X轴翻转退出的动画。 |
| `flipOutY` | `AnimatedBuilder` | 创建一个沿Y轴翻转退出的动画。 |
| `lightSpeedInRight` | `AnimatedBuilder` | 创建一个光速进入的动画，小部件快速进入并缓慢停止。 |
| `lightSpeedInLeft` | `AnimatedBuilder` | 创建一个光速进入的动画，小部件快速进入并缓慢停止。 |
| `lightSpeedOutRight` | `AnimatedBuilder` | 创建一个光速退出的动画，小部件快速移出视图。 |
| `lightSpeedOutLeft` | `AnimatedBuilder` | 创建一个光速退出的动画，小部件快速移出视图。 |
| `rotateIn` | `AnimatedBuilder` | 创建一个旋转进入的动画。 |
| `rotateInDownLeft` | `AnimatedBuilder` | 创建一个从左下角旋转进入的动画。 |
| `rotateInDownRight` | `AnimatedBuilder` | 创建一个从右下角旋转进入的动画。 |
| `rotateInUpLeft` | `AnimatedBuilder` | 创建一个从左上角旋转进入的动画。 |
| `rotateInUpRight` | `AnimatedBuilder` | 创建一个从右上角旋转进入的动画。 |
| `rotateOut` | `AnimatedBuilder` | 创建一个旋转退出的动画。 |
| `rotateOutDownLeft` | `AnimatedBuilder` | 创建一个向左下角旋转退出的动画。 |
| `rotateOutDownRight` | `AnimatedBuilder` | 创建一个向右下角旋转退出的动画。 |
| `rotateOutUpLeft` | `AnimatedBuilder` | 创建一个向左上角旋转退出的动画。 |
| `rotateOutUpRight` | `AnimatedBuilder` | 创建一个向右上角旋转退出的动画。 |
| `slideInDown` | `SlideTransition` | 创建一个从上方滑入的动画。 |
| `slideInLeft` | `SlideTransition` | 创建一个从左侧滑入的动画。 |
| `slideInRight` | `SlideTransition` | 创建一个从右侧滑入的动画。 |
| `slideInUp` | `SlideTransition` | 创建一个从下方滑入的动画。 |
| `slideOutDown` | `SlideTransition` | 创建一个向下滑出的动画。 |
| `slideOutLeft` | `SlideTransition` | 创建一个向左滑出的动画。 |
| `slideOutRight` | `SlideTransition` | 创建一个向右滑出的动画。 |
| `slideOutUp` | `SlideTransition` | 创建一个向上滑出的动画。 |
| `zoomIn` | `ScaleTransition` | 创建一个缩放进入的动画，小部件从小到大。 |
| `zoomInDown` | `ScaleTransition` | 创建一个从上方缩放并滑入的动画。 |
| `zoomInLeft` | `ScaleTransition` | 创建一个从左侧缩放并滑入的动画。 |
| `zoomInRight` | `ScaleTransition` | 创建一个从右侧缩放并滑入的动画。 |
| `zoomInUp` | `ScaleTransition` | 创建一个从下方缩放并滑入的动画。 |
| `zoomOut` | `ScaleTransition` | 创建一个缩放退出的动画，小部件从大到小。 |
| `zoomOutDown` | `AnimatedBuilder` | 创建一个向下缩放并滑出的动画。 |
| `zoomOutLeft` | `AnimatedBuilder` | 创建一个向左缩放并滑出的动画。 |
| `zoomOutRight` | `AnimatedBuilder` | 创建一个向右缩放并滑出的动画。 |
| `zoomOutUp` | `AnimatedBuilder` | 创建一个向上缩放并滑出的动画。 |


![alt text](assets/example_vVU5ImxxqS.gif)

#### 引入库

首先，确保你的 Flutter 项目中已经添加了 easy_animations 库作为依赖。


```dart
import 'package:easy_animations/easy_animations.dart';
```

#### 示例：使用弹跳动画

下面的示例展示了如何给一个文本小部件添加一个“弹跳”动画。



```dart
import 'package:flutter/material.dart';
import 'package:easy_animations/easy_animations.dart';

class BounceTextExample extends StatefulWidget {
  const BounceTextExample({super.key});

  @override
  State<BounceTextExample> createState() => _BounceTextExampleState();
}

class _BounceTextExampleState extends State<BounceTextExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bounce Animation Example'),
      ),
      body: Center(
        // 使用 AnimateStyles.bounce 方法
        child: SingleChildScrollView(
          child: Column(
            children: [
              AnimateStyles.bounce(
                _controller,
                const Text(
                  'Bounce!',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

在这个示例中，我们首先创建了一个 AnimationController，它控制动画的播放。然后，我们使用 AnimateStyles.bounce 方法并将动画控制器和要动画化的小部件（在这个例子中是一个文本小部件）作为参数传递。这样，文本小部件就会有一个弹跳动画效果。

