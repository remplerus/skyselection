#priority 5

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.Replacer;

function replacing(input as IIngredient, output as IIngredient) as void {
	Replacer.forEverything().replace(input, output);
}

Replacer.forTypes(craftingTable)
	.replace(<item:minecraft:crafting_table>, <tag:items:forge:workbenches>)
	.replace(<item:minecraft:iron_ingot>, <tag:items:forge:ingots/iron>)
	.replace(<item:minecraft:stone>, <tag:items:block_variants:stone_crafting>)
	.suppressWarnings()
	.execute();