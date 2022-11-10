import 'package:supabase/supabase.dart';

class SupasbaseCredentials {
  static const String APIKEY =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inl5ZG16aG9iY2VkZnRpbm1kZHlxIiwicm9sZSI6ImFub24iLCJpYXQiOjE2Njc5MDY0NDAsImV4cCI6MTk4MzQ4MjQ0MH0.Br4KeOmCg8uDpB_XC8nvAbvKWELMOClU_oEChxrhhu4';
  static const String APIURL = 'https://yydmzhobcedftinmddyq.supabase.co';
  static SupabaseClient supabaseClient = SupabaseClient(APIURL, APIKEY);
}
