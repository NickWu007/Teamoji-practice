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
  String emoji;

  @Input()
  String userName;

  String get shortUserName => userName.trim().toUpperCase().substring(0, 1);
}