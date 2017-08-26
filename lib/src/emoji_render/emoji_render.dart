import 'package:angular2/angular2.dart';
import 'package:angular2/core.dart';

@Component(
  selector: 'emoji-render',
  templateUrl: 'emoji_render.html',
  directives: const [
    NgStyle,
  ],
)
class EmojiRenderComponent {
  @Input()
  bool useBigIcon;

  @Input()
  String icon;
}