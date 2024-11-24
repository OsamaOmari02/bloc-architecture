String extractErrorMessage(Map<String, dynamic>? res) {
  if (res == null) {
    return 'error';
  }

  if (res['message'] is List && res['message']?.isNotEmpty == true) {
    return res['message'][0];
  } else if (res['message'] != null) {
    return res['message'];
  } else if (res['error'] is List && res['error']?.isNotEmpty == true) {
    return res['error'][0];
  } else if (res['error'] != null) {
    return res['error'];
  } else if (res['frontFacingMessage'] is List &&
      res['frontFacingMessage']?.isNotEmpty == true) {
    return res['frontFacingMessage'][0];
  } else if (res['frontFacingMessage'] != null) {
    return res['frontFacingMessage'];
  } else if (res['messages'] is List && res['messages']?.isNotEmpty == true) {
    return res['messages'][0];
  } else if (res['frontFacingMessages'] is List &&
      res['frontFacingMessages']?.isNotEmpty == true) {
    return res['frontFacingMessages'][0];
  } else if (res['errors'] is List && res['errors']?.isNotEmpty == true) {
    return res['errors'][0];
  } else {
    return 'error';
  }
}
