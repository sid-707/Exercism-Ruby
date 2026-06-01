// @ts-check

/**
 * Calculates the sum of the two input arrays.
 *
 * @param {number[]} array1
 * @param {number[]} array2
 * @returns {number} sum of the two arrays
 */
export function twoSum(array1, array2) {
  let num1 = Number(array1.join(''));
  let num2 = Number(array2.join(''));

  return num1 + num2;
}

/**
 * Checks whether a number is a palindrome.
 *
 * @param {number} value
 * @returns {boolean} whether the number is a palindrome or not
 */
export function luckyNumber(value) {
  const strValue = String(value);
  const strValueArr = strValue.split('');
  const reverseValue = Number(strValueArr.reverse().join(''))
  return value === reverseValue;
}

/**
 * Determines the error message that should be shown to the user
 * for the given input value.
 *
 * @param {string|null|undefined} input
 * @returns {string} error message
 */
export function errorMessage(input) {
  if (input === null || input === undefined || input?.length === 0) return 'Required field';
  if (input === '0' || Number.isNaN(Number(input))) return 'Must be a number besides 0';
  return '';
}
