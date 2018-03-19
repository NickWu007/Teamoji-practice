import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'return-button',
  templateUrl: 'return_button.html',
  styleUrls: const ['return_button.css'],
  directives: const [
    MaterialButtonComponent,
    MaterialIconComponent,
  ],
)
class ReturnButtonComponent {
  StreamController get returnStreamController =>
      new StreamController.broadcast();

  @Output()
  Stream get onReturn => returnStreamController.stream;
}
