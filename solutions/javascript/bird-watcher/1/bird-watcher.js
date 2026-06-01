// @ts-check
//
// The line above enables type checking for this file. Various IDEs interpret
// the @ts-check directive. It will give you helpful autocompletion when
// implementing this exercise.

/**
 * Calculates the total bird count.
 *
 * @param {number[]} birdsPerDay
 * @returns {number} total bird count
 */
export function totalBirdCount(birdsPerDay) {
  let count = 0;
  let i;
  for (i = 0; i < birdsPerDay.length; i++) {
    count += birdsPerDay[i];
  }

  return count;
}

/**
 * Calculates the total number of birds seen in a specific week.
 *
 * @param {number[]} birdsPerDay
 * @param {number} week
 * @returns {number} birds counted in the given week
 */
export function birdsInWeek(birdsPerDay, week) {
  let birdCountsPerWeek = new Map();

  let currentWeek = 0;
  birdsPerDay.forEach((count, index) => {
    if (index % 7 === 0) {
      currentWeek += 1;
      birdCountsPerWeek.set(currentWeek, []);
    }

    birdCountsPerWeek.get(currentWeek).push(count);
  });

  return birdCountsPerWeek.get(week).reduce((total, item) => total + item);
}

/**
 * Fixes the counting mistake by increasing the bird count
 * by one for every second day.
 *
 * @param {number[]} birdsPerDay
 * @returns {number[]} corrected bird count data
 */
export function fixBirdCountLog(birdsPerDay) {
  let i;
  for (i = 0; i < birdsPerDay.length; i++) {
    if (i % 2 === 0) birdsPerDay[i] += 1;
  }

  return birdsPerDay;
}
