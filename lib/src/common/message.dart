class Message {
  String username;
  String imageURL;
  String text;
  DateTime timestamp;

  Message.fromJson(Map map) {
    username = map.containsKey('name') ? map['name'] : 'Anonymous';
    imageURL = map.containsKey('imageURL')
        ? map['imageURL']
        : 'images/profile_placeholder.png';
    text =
        map.containsKey('text') ? new String.fromCharCodes(map['text']) : null;
    timestamp = map.containsKey('timestamp')
        ? DateTime.parse(map['timestamp'])
        : new DateTime.now();
  }
}
