import 'dart:async';
import 'package:Teamoji_tutorial/src/common/message.dart';
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
  final StreamController<Message> _selectStream =
      new StreamController.broadcast();

  @Output()
  Stream get onSelect => _selectStream.stream;

  void onCancel() => _selectStream.add(null);

  void onSelectEmoji(String emoji) {
    // TODO: add new message to the stream.
    _selectStream.add(null);
  }
}
