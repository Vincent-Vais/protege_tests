/**
 * Make a function which calculates the angle between the hands of a clock
 * The function takes two arguments, hours, and minutes. These will be integers between 1 - 12 and 0 - 59 respectively.
 * The hour hand is assumed to move continuously (not incrementally).
 * So that means the the position of the hour hand is affected by the minute hand.
 * The result of the function should be the angle between the hands. The result of the function should always be >= 0 and <= 180.
 * Good luck
 */

const HOUR_PART = 360 / 12;
const MINUTE_PART = 360 / 60;

function calculateClockAngle(hours, minutes) {
  const hourAngle = hours * HOUR_PART + (minutes / 60) * HOUR_PART;
  const minuteAngle = minutes * MINUTE_PART;

  const dif = hourAngle - minuteAngle;
  const dist1 = Math.abs(dif);
  const dist2 = Math.abs(360 - dif);
  return Math.min(dist1, dist2);
}

//Using these examples should help
console.log(calculateClockAngle(1, 15));
console.log(calculateClockAngle(3, 37));
console.log(calculateClockAngle(12, 0));
console.log(calculateClockAngle(8, 8));
