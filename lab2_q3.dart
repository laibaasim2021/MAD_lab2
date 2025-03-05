import 'dart:async';

// Function that simulates fetching weather data from an API
Future<String> fetchWeatherData() async {
  await Future.delayed(Duration(seconds: 3)); // Simulate network delay

  bool isSuccess = true; // Change to false to simulate an error
  if (isSuccess) {
    return "Weather: Sunny, Temperature: 25°C";
  } else {
    throw Exception("Failed to fetch weather data");
  }
}

void main() async {
  print("Fetching weather data...");

  try {
    String weather = await fetchWeatherData();
    print("Weather data received: $weather");
  } catch (e) {
    print("Error: $e");
  }
}
