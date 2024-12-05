```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      // Safe access to nested data with null checks
      final nestedValue = jsonData['nested']?['value'];
      print('Nested Value: $nestedValue');
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the error appropriately, e.g., display an error message to the user.
    // rethrow or other more sophisticated error handling should be done here
  }
}
```