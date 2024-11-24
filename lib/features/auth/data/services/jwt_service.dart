import 'dart:convert';
import '../../../../core/strings/failures_messages.dart';

class JwtService {
  static Map<String, dynamic> decodeToken(String token) {
    final List<String> splitToken = token.split(".");
    if (splitToken.length != 3) {
      throw UNEXPECTED_FAILURE_MESSAGE;
    }
    try {
      final String payloadBase64 =
          splitToken[1]; // Payload is always the index 1
      // Base64 should be multiple of 4. Normalize the payload before decode it
      final String normalizedPayload = base64.normalize(payloadBase64);
      // Decode payload, the result is a String
      final String payloadString =
          utf8.decode(base64.decode(normalizedPayload));
      // Parse the String to a Map<String, dynamic>
      final Map<String, dynamic> decodedPayload = jsonDecode(payloadString);
      return decodedPayload;
    } catch (e) {
      throw UNEXPECTED_FAILURE_MESSAGE;
    }
  }
}
