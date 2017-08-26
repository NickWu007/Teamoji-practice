import 'package:Teamoji_tutorial/src/common/messages.dart';
import 'package:Teamoji_tutorial/src/emoji_render/emoji_render.dart';
import 'package:angular2/angular2.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'emoji-selector',
  templateUrl: 'emoji_selector.html',
  directives: const [
    EmojiRenderComponent,
    GlyphComponent,
    MaterialButtonComponent,
    NgFor,
  ],
  styleUrls: const ['emoji_selector.css'],
)
class EmojiSelectorComponent extends EmojiSelectorMessages with EmojiList {

  void onCancel() => _dismiss();

  void onSelect(String emoji) {
    print('You want to post $emoji');
    _dismiss();
  }

  void _dismiss() => print('You want to cancel selecting an emoji');
}
