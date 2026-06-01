//
// This is only a SKELETON file for the 'Resistor Color Duo' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

const COLOR_CODE_LENGTH_LIMIT = 2;

export const decodedValue = (colors) => {
  return Number.parseInt(colors.splice(0, 2).map(color => COLORS.indexOf(color)).join(''));
};

export const COLORS = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'];
