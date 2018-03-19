const String jsonTagUsername = "name";
const String jsonTagImageURL = "imageURL";
const String jsonTagText = "text";
const String jsonTagTimestamp = "timestamp";

class Message {
  String username;
  String imageURL;
  String text;
  DateTime timestamp;

  Message(this.username, this.imageURL, this.text, this.timestamp);

  Message.fromJson(Map map) {
    username =
        map.containsKey(jsonTagUsername) ? map[jsonTagUsername] : 'Anonymous';
    imageURL = map.containsKey(jsonTagImageURL)
        ? map[jsonTagImageURL]
        : 'images/profile_placeholder.png';
    text = map.containsKey(jsonTagText)
        ? new String.fromCharCodes(map[jsonTagText])
        : null;
    timestamp = map.containsKey(jsonTagTimestamp)
        ? DateTime.parse(map[jsonTagTimestamp])
        : new DateTime.now();
  }

  static Map toMap(Message item) {
    Map jsonMap = {
      jsonTagUsername: item.username,
      jsonTagImageURL: item.imageURL,
      jsonTagText: item.text.codeUnits,
      jsonTagTimestamp: item.timestamp.toString(),
    };
    return jsonMap;
  }
}
