import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'login1.dart'; // Import your login screen
import 'signup.dart'; // Import your signup screen

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final supabaseUrl ='postgresql://postgres.kmooijldmryxllhvxope:[R0iISUf9ZotVYwp5]@aws-0-eu-central-1.pooler.supabase.com:6543/postgres' ; // Replace with your Supabase URL
  final supabaseKey ='eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imttb29pamxkbXJ5eGxsaHZ4b3BlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjEwNDc3OTIsImV4cCI6MjAzNjYyMzc5Mn0.-S7r1o7kjJWIoX5-YF07mDtLaQn74ZAlQoR7byXVTw0'; // Replace with your Supabase API key
  final supabaseClient = SupabaseClient(supabaseUrl, supabaseKey);

  runApp(MyApp(supabaseClient: supabaseClient));
}

class MyApp extends StatelessWidget {
  final SupabaseClient supabaseClient;

  MyApp({required this.supabaseClient});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Supabase Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login', // Set initial route
      routes: {
        '/login': (context) => LoginScreen(supabaseClient: supabaseClient),
        '/signup': (context) => SignupScreen(supabaseClient: supabaseClient),
        // Add more routes as needed
      },
    );
  }
}
