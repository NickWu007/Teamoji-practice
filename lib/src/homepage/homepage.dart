import 'package:Teamoji_tutorial/src/emoji_render/emoji_render.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
    selector: 'homepage',
    directives: const [
      DeferredContentDirective,
      EmojiRenderComponent,
      MaterialButtonComponent,
      GlyphComponent,
      ModalComponent,
      MaterialDialogComponent,
      NgFor,
    ],
    templateUrl: 'homepage.html',
    styleUrls: const [
      'homepage.css',
    ])
class HomepageComponent {
  bool visible = false;

  List<String> _mockEmojiList = const [
    '\u{1F60B}',
    '\u{1F60E}',
    '\u{1F60D}',
    '\u{1F618}',
    '\u{1F617}',
    '\u{1F619}',
    '\u{1F61A}',
    '\u{1F607}',
    '\u{1F610}',
    '\u{1F611}',
    '\u{1F636}',
    '\u{1F60F}',
  ];

  List<String> get previousEmojis => _mockEmojiList;
}
