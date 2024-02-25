class ContentText {
  final String id;
  final String role;
  final String value;

  ContentText({required this.id, required this.role, required this.value});

  factory ContentText.fromJson(Map<String, dynamic> json) {
    String id = json['id'] as String;
    String role = json['role'] as String;

    // Check if 'content' list is not empty
    if (json['content'] != null && json['content'].isNotEmpty) {
      // Access the first element of 'content' list
      String value = json['content'][0]['text']['value'] as String;
      return ContentText(id: id, role: role, value: value);
    } else {
      // Handle the case when 'content' list is empty
      return ContentText(id: id, role: role, value: '');
    }
  }
}
