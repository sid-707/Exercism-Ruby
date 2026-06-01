/// <reference path="./global.d.ts" />
// @ts-check

/**
 * Implement the functions needed to solve the exercise here.
 * Do not forget to export them so they are available for the
 * tests. Here an example of the syntax as reminder:
 *
 * export function yourFunction(...) {
 *   ...
 * }
 */

export function cookingStatus(timer) {
    if (timer === undefined) return 'You forgot to set the timer.';
    if (timer === 0) return 'Lasagna is done.';
    return 'Not done, please wait.';
}

export function preparationTime(layers, time = 2) {
    return layers.length * time;
}

export function quantities(layers) {
    const GRAMS_OF_NOODLES_PER_NOODLE_LAYER = 50;
    const LITRES_OF_SAUCE_PER_SAUCE_LAYER = 0.2;

    let numNoodleLayers = 0;
    let numSauceLayers = 0;
    layers.forEach(layer => {
        if (layer === 'noodles') numNoodleLayers += 1;
        if (layer === 'sauce') numSauceLayers += 1;
    });

    const noodles = numNoodleLayers * GRAMS_OF_NOODLES_PER_NOODLE_LAYER;
    const sauce = numSauceLayers * LITRES_OF_SAUCE_PER_SAUCE_LAYER;

    return {
        noodles,
        sauce
    }
}

export function addSecretIngredient(friendsList, myList) {
    myList.push(friendsList[friendsList.length - 1]);
}

export function scaleRecipe(recipe, portions) {
    const NUMBER_OF_PORTIONS_PER_ITEM = 2;
    const scaledRecipe = { ...recipe };
    
    Object.keys(scaledRecipe).forEach(item => 
        scaledRecipe[item] = (recipe[item] / NUMBER_OF_PORTIONS_PER_ITEM) * portions
    );

    return scaledRecipe;
}