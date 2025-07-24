/// General App Constants
class AppConstants {
  static const String appName = 'Event Management App';
  static const String version = '1.0.0';
}

/// Shared Preferences Keys
class PreferenceKeys {
  static const String userId = 'user_id';
  static const String accessToken = 'access_token';
  static const String isLoggedIn = 'is_logged_in';
  static const String userRole = 'user_role';
  static const String companyId = 'company_id';
  static const String selectedEventId = 'selected_event_id';
}

/// API Endpoint Paths (relative to baseUrl)
class ApiEndpoints {
  static const String login = 'auth/login';
  static const String signup = 'auth/signup';
  static const String logout = 'auth/logout';

  static const String getEvents = 'event/list';
  static const String createEvent = 'event/create';
  static const String updateEvent = 'event/update';
  static const String deleteEvent = 'event/delete';

  static const String getUsers = 'user/list';
  static const String assignStaff = 'staff/assign';
  static const String dashboardSummary = 'dashboard/summary';
}

/// UI Padding, Spacing & Design Constants
class UIConstants {
  static const double screenHorizontalPadding = 24.0;
  static const double formFieldSpacing = 16.0;
  static const double cardBorderRadius = 12.0;
  static const double buttonSpacing = 20.0;
  static const double bottomSheetRadius = 24.0;
  static const double iconSize = 22.0;
  static const double contentPadding = 12.0;
  static const double tabBarSpacing = 20.0;
  static const double sectionTitleSpacing = 30.0;
}
