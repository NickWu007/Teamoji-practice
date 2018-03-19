import 'package:Teamoji_tutorial/src/common/message.dart';
import 'package:Teamoji_tutorial/src/emoji_render/emoji_render.dart';
import 'package:angular/angular.dart';

@Component(
  selector: 'user-post',
  templateUrl: 'user_post.html',
  styleUrls: const ['user_post.css'],
  directives: const [
    EmojiRenderComponent,
  ],
)
class UserPostComponent {
  @Input()
  Message message;

  String get imageURL => message.imageURL;

  String get text => message.text;

  String get username => message.username;

  String timeSent() {
    Duration diff = new DateTime.now().difference(message.timestamp);
    if (diff.inSeconds < 60) return diff.inSeconds.toString() + 's';
    if (diff.inMinutes < 60) return diff.inMinutes.toString() + 'm';
    if (diff.inHours < 24) return diff.inHours.toString() + 'h';
    return diff.inDays.toString() + 'd';
  }
}
