//
// This is only a SKELETON file for the 'Resistor Color Duo' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

const colorCode = (color) => {
  return COLORS.indexOf(color);
};

export const decodedValue = (colors) => {
  return Number.parseInt(colors.splice(0, 2).map(color => colorCode(color)).join(''));
};

const COLORS = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'];
