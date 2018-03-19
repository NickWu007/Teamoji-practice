import 'dart:async';
import 'package:Teamoji_tutorial/src/common/messages.dart';
import 'package:Teamoji_tutorial/src/emoji_render/emoji_render.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'emoji-selector',
  templateUrl: 'emoji_selector.html',
  directives: const [
    EmojiRenderComponent,
    MaterialIconComponent,
    MaterialButtonComponent,
    NgFor,
  ],
  styleUrls: const ['emoji_selector.css'],
)
class EmojiSelectorComponent extends EmojiSelectorMessages with EmojiList {
  final StreamController _selectStream = new StreamController.broadcast();

  @Output()
  Stream get onSelect => _selectStream.stream;

  void onCancel() => _dismiss();

  void onSelectEmoji(String emoji) {
    print('You want to post $emoji');
    _selectStream.add(emoji);
  }

  void _dismiss() {
    print('You want to cancel selecting an emoji');
    _selectStream.add(null);
  }
}
