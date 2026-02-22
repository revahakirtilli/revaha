import 'package:flutter/material.dart';

class MoonPhaseService {
  // Method to calculate the moon phase for a given date
  String calculateMoonPhase(DateTime date) {
    // Calculation algorithm to determine the moon phase
    int lunarCycle = 29; // Average lunar cycle in days
    int dayOfYear = date.dayOfYear;
    int phase = (dayOfYear % lunarCycle);

    if (phase < lunarCycle / 4) {
      return 'New Moon';
    } else if (phase < lunarCycle / 2) {
      return 'First Quarter';
    } else if (phase < 3 * lunarCycle / 4) {
      return 'Full Moon';
    } else {
      return 'Last Quarter';
    }
  }

  // Example of usage
  void main() {
    DateTime date = DateTime.utc(2026, 2, 22, 13, 39, 20);
    print('Moon Phase: ' + calculateMoonPhase(date));
  }
}