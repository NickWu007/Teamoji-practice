import 'package:angular/angular.dart';

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
