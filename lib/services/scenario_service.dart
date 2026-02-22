// scenario_service.dart

class ScenarioService {
  List<Map<String, dynamic>> filterScenarios(List<Map<String, dynamic>> scenarios, String criteria) {
    // Implement filtering logic based on criteria here
    return scenarios.where((scenario) => scenario['keywords'].contains(criteria)).toList();
  }
}