```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = json.decode(response.body);
      // Accessing nested data without null checks
      final nestedValue = jsonData['nested']['value']; // potential error here
      print('Nested Value: $nestedValue');
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Ignoring the error, which might lead to unexpected behavior
  }
}
```