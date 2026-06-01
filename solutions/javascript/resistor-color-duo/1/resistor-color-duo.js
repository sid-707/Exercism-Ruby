//
// This is only a SKELETON file for the 'Resistor Color Duo' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

const COLOR_CODE_LENGTH_LIMIT = 2;

export const decodedValue = (colors) => {
  let colorCode = [];

  let i;
  for (i = 0; i < COLOR_CODE_LENGTH_LIMIT; i++) {
    colorCode.push(COLORS.indexOf(colors[i]));
  }

  return Number.parseInt(colorCode.join(''));
};

export const COLORS = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'];
