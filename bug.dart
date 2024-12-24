```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Handle the successful response
      final jsonData = jsonDecode(response.body);
      print(jsonData); 
    } else {
      // Handle the error response
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error: $e');
    // Here's where the problem is: Re-throwing the exception without specifying the type
    rethrow; //This can lead to silent failures if not caught specifically
  }
}

void main() async {
  try{
    await fetchData();
  } catch (e) {
    print('Caught error in main: $e'); //This will catch exceptions, but you lose specific details
  }
}
```