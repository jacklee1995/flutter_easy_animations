import 'package:flutter/foundation.dart' show ValueListenable;
import 'package:flutter/material.dart';
import 'package:flutter_easy_animations/flutter_easy_animations.dart';

void main() => runApp(const GalleryApp());

class GalleryApp extends StatelessWidget {
  const GalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Animations',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF6750A4),
        useMaterial3: true,
      ),
      home: const GalleryPage(),
    );
  }
}

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  final ValueNotifier<int> _playAll = ValueNotifier<int>(0);
  String _query = '';

  @override
  void dispose() {
    _playAll.dispose();
    super.dispose();
  }

  List<AnimateStyle> get _visible {
    final query = _query.trim().toLowerCase();
    if (query.isEmpty) {
      return AnimateStyle.values;
    }
    return AnimateStyle.values
        .where((AnimateStyle style) => style.name.toLowerCase().contains(query))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final styles = _visible;

    return Scaffold(
      appBar: AppBar(
        title: Text('Easy Animations  ·  ${styles.length} effects'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(64),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Filter by name, e.g. "bounce" or "Out"',
                border: OutlineInputBorder(),
                isDense: true,
              ),
              onChanged: (String value) => setState(() => _query = value),
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            tooltip: 'Replay all',
            icon: const Icon(Icons.play_arrow),
            onPressed: () => _playAll.value++,
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 220,
          mainAxisExtent: 160,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: styles.length,
        itemBuilder: (BuildContext context, int index) {
          final style = styles[index];
          return _EffectTile(
            key: ValueKey<AnimateStyle>(style),
            style: style,
            replay: _playAll,
          );
        },
      ),
    );
  }
}

class _EffectTile extends StatefulWidget {
  const _EffectTile({required this.style, required this.replay, super.key});

  final AnimateStyle style;
  final ValueListenable<int> replay;

  @override
  State<_EffectTile> createState() => _EffectTileState();
}

class _EffectTileState extends State<_EffectTile>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1) * widget.style.track.durationScale,
    vsync: this,
  )..forward();

  @override
  void initState() {
    super.initState();
    widget.replay.addListener(_play);
  }

  @override
  void dispose() {
    widget.replay.removeListener(_play);
    _controller.dispose();
    super.dispose();
  }

  void _play() => _controller.forward(from: 0);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: _play,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: AnimateStyled(
                  style: widget.style,
                  animation: _controller,
                  respectReducedMotion: false,
                  child: Container(
                    width: 64,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Hi',
                      style: TextStyle(
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              color: theme.colorScheme.surfaceContainerHighest,
              child: Text(
                widget.style.name,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.labelLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
