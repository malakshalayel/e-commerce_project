
import 'package:ecommerce_course/core/class/statusrequest.dart';

handlingData(response) {
  if (response is Map<String, dynamic>) {
    // Assuming a successful response is structured like this:
    if (response['status'] == "success") {
      return StatusRequest.success;
    } else {
      return StatusRequest.failuer; // Handle failure
    }
  } else if (response is StatusRequest) {
    return response; // If it's already a StatusRequest instance
  } else {
    return StatusRequest.serverfailuer; // Default case for unexpected types
  }
  
}
