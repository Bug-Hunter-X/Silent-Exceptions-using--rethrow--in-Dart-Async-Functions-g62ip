```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print(jsonData); 
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions, rethrow with specific type for better error handling
    print('Error: $e');
    rethrow; 
  }
}

void main() async {
  try{
    await fetchData();
  } catch (e) {
    //Handle exceptions with the correct type
    if(e is Exception){
      print('Caught specific Exception in main: $e');
    }else{
      print('Caught error in main: $e');
    }
  }
}
```