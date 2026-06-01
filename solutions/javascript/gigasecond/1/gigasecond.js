//
// This is only a SKELETON file for the 'Gigasecond' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const gigasecond = (date) => {
  const newTimeInSeconds = (date.getTime() / 1000) + Math.pow(10, 9);
  return new Date(newTimeInSeconds * 1000)
};
