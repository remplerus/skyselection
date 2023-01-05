#priority 10

import crafttweaker.api.block.Block;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;

function createHeatRecipe(block as Block, amount as int) as void {
	<recipetype:exnihilosequentia:heat>.create(block.getDescriptionId()).setBlock(block).setAmount(amount);
}

function createSieveRecipe(input as IIngredient, drop as IItemStack, mesh as string[], dropChance as float[]) as void {
	if mesh.length != dropChance.length {
		println("error: index of mesh (" + mesh.length + ") does not match with dropChance index (" + dropChance.length + ") for input " + input.items[0].registryName.path + " and output " + drop.registryName.path);
		return;
	}
	var name as string = "";
	for index1, meshes in mesh {
		for index2, drops in dropChance {
			if index1 == index2 {
				name = "skysel_" + input.items[0].registryName.path + "_" + drop.registryName.path + "_" + index1;
				<recipetype:exnihilosequentia:sieve>
					.create(name)
					.setInput(input)
					.addRoll(meshes, drops)
					.addDrop(drop);
			}
		}
	}
}
function createWaterSieveRecipe(input as IIngredient, drop as IItemStack, mesh as string[], dropChance as float[]) as void {
	if mesh.length != dropChance.length {
		println("error: index of mesh (" + mesh.length + ") does not match with dropChance index (" + dropChance.length + ") for input " + input.items[0].registryName.path + " and output " + drop.registryName.path);
		return;
	}
	var name as string = "";
	for index1, meshes in mesh {
		for index2, drops in dropChance {
			if index1 == index2 {
				name = "skysel_water_" + input.items[0].registryName.path + "_" + drop.registryName.path + "_" + index1;
				<recipetype:exnihilosequentia:sieve>
					.create(name)
					.setInput(input)
					.addRoll(meshes, drops)
					.addDrop(drop)
					.setWaterlogged();
			}
		}
	}
}

function createSaplings(input as IIngredient, drop as IItemStack) as void {
	createSieveRecipe(input, drop, ["string", "flint", "iron", "diamond", "emerald", "netherite"], [0.01, 0.04, 0.08, 0.12, 0.15, 0.2]);
}

function createWaterlogSieveRecipeSeeds(input as IIngredient, drop as IItemStack, dropChance as float[]) as void {
	val name as string = "skysel_" + input.items[0].registryName.path + "_" + drop.registryName.path;
	<recipetype:exnihilosequentia:sieve>
		.create(name)
		.setInput(input)
		.addRoll("diamond", dropChance[0])
		.addRoll("emerald", dropChance[1])
		.addRoll("netherite", dropChance[2])
		.addDrop(drop)
		.setWaterlogged();
}

//removes
<recipetype:exnihilosequentia:sieve>.removeAll();

//heat
createHeatRecipe(<block:compactmachines:solid_wall>, 5);
createHeatRecipe(<block:mekanism:superheating_element>, 25);
createHeatRecipe(<block:mekanism:block_uranium>, 20);

//sieve
///leaves
createSaplings(<item:minecraft:acacia_leaves>, <item:minecraft:acacia_sapling>);
createSaplings(<item:minecraft:birch_leaves>, <item:minecraft:birch_sapling>);
createSaplings(<item:minecraft:dark_oak_leaves>, <item:minecraft:dark_oak_sapling>);
createSaplings(<item:minecraft:jungle_leaves>, <item:minecraft:jungle_sapling>);
createSaplings(<item:minecraft:jungle_leaves>, <item:minecraft:bamboo>);
createSaplings(<item:minecraft:oak_leaves>, <item:minecraft:oak_sapling>);
createSaplings(<item:minecraft:spruce_leaves>, <item:minecraft:spruce_sapling>);
createSaplings(<tag:items:minecraft:leaves>, <item:minecraft:apple>);
createSieveRecipe(<tag:items:minecraft:leaves>, <item:minecraft:golden_apple>, ["iron", "diamond", "emerald", "netherite"], [0.01, 0.04, 0.08, 0.12]);

///dirt
var input = <item:minecraft:dirt>;
createSieveRecipe(input, <item:exnihilosequentia:mycelium_spores>, ["string", "flint", "iron", "diamond"], [0.01, 0.025, 0.05, 0.1]);
createSieveRecipe(input, <item:exnihilosequentia:grass_seeds>, ["string", "flint", "iron", "diamond"], [0.01, 0.025, 0.05, 0.1]);
createSieveRecipe(input, <item:exnihilosequentia:stone_pebble>, ["string", "string", "string", "flint", "flint", "flint"], [1.0, 0.666, 0.333, 1.0, 1.0, 0.75]);
createSieveRecipe(input, <item:exnihilosequentia:andesite_pebble>, ["string", "string", "flint", "flint"], [0.666, 0.333, 0.8, 0.5]);
createSieveRecipe(input, <item:exnihilosequentia:diorite_pebble>, ["string", "string", "flint", "flint"], [0.666, 0.333, 0.8, 0.5]);
createSieveRecipe(input, <item:exnihilosequentia:granite_pebble>, ["string", "string", "flint", "flint"], [0.666, 0.333, 0.8, 0.5]);

for item in <tag:items:skyselection:seeds/tier_1> {
	createSieveRecipe(input, item, ["string", "flint", "iron"], [0.05, 0.1, 0.15]);
}
for item in <tag:items:skyselection:seeds/tier_2> {
	createSieveRecipe(input, item, ["iron", "diamond", "emerald", "netherite"], [0.01, 0.025, 0.05, 0.1]);
}

///gravel
input = <item:minecraft:gravel>;
createSieveRecipe(input, <item:minecraft:coal>, ["flint", "iron", "diamond", "emerald", "netherite"], [0.1, 0.175, 0.25, 0.35, 0.5]);
createSieveRecipe(input, <item:minecraft:lapis_lazuli>, ["iron", "diamond", "emerald", "netherite"], [0.02, 0.05, 0.1, 0.15]);
createSieveRecipe(input, <item:minecraft:flint>, ["string", "flint", "iron"], [0.15, 0.3, 0.5]);
createSieveRecipe(input, <item:exnihilosequentia:aluminum_pieces>, ["iron", "diamond", "emerald", "netherite"], [0.075, 0.125, 0.225, 0.35]);
createSieveRecipe(input, <item:exnihilosequentia:tin_pieces>, ["iron", "diamond", "emerald", "netherite"], [0.075, 0.125, 0.225, 0.35]);
createSieveRecipe(input, <item:exnihilosequentia:uranium_pieces>, ["diamond", "emerald", "netherite"], [0.075, 0.125, 0.2]);
createSieveRecipe(input, <item:exnihilosequentia:copper_pieces>, ["iron", "diamond", "emerald", "netherite"], [0.075, 0.125, 0.225, 0.35]);
createSieveRecipe(input, <item:exnihilosequentia:gold_pieces>, ["iron", "diamond", "emerald", "netherite"], [0.045, 0.085, 0.125, 0.2]);
createSieveRecipe(input, <item:minecraft:diamond>, ["iron", "diamond", "emerald", "netherite"], [0.005, 0.025, 0.05, 0.15]);
createSieveRecipe(input, <item:minecraft:emerald>, ["iron", "diamond", "emerald", "netherite"], [0.003, 0.02, 0.05, 0.15]);
createSieveRecipe(input, <item:exnihilosequentia:iron_pieces>, ["flint", "iron", "diamond", "emerald", "netherite"], [0.3, 0.5, 0.45, 0.6, 0.75]);

///sand
input = <item:minecraft:sand>;
createSieveRecipe(input, <item:minecraft:cactus>, ["string", "flint", "iron", "diamond"], [0.2, 0.3, 0.4, 0.6]);
createSieveRecipe(input, <item:minecraft:cocoa_beans>, ["string", "flint", "iron", "diamond"], [0.03, 0.075, 0.125, 0.2]);
createSieveRecipe(input, <item:exnihilosequentia:iron_pieces>, ["flint", "iron", "diamond", "emerald", "netherite"], [0.3, 0.5, 0.45, 0.6, 0.75]);
createSieveRecipe(input, <item:exnihilosequentia:lead_pieces>, ["iron", "diamond", "emerald", "netherite"], [0.075, 0.125, 0.225, 0.35]);
createSieveRecipe(input, <item:exnihilosequentia:nickel_pieces>, ["iron", "diamond", "emerald", "netherite"], [0.075, 0.125, 0.225, 0.35]);
createSieveRecipe(input, <item:exnihilosequentia:tin_pieces>, ["iron", "diamond", "emerald", "netherite"], [0.075, 0.125, 0.225, 0.35]);
createSieveRecipe(input, <item:exnihilomekanism:osmium_pieces>, ["iron", "diamond", "emerald", "netherite"], [0.075, 0.125, 0.225, 0.35]);
createSieveRecipe(input, <item:exnihilosequentia:silver_pieces>, ["iron", "diamond", "emerald", "netherite"], [0.075, 0.125, 0.225, 0.35]);
createSieveRecipe(input, <item:exnihilosequentia:zinc_pieces>, ["iron", "diamond", "emerald", "netherite"], [0.075, 0.125, 0.225, 0.35]);
createSieveRecipe(input, <item:minecraft:redstone>, ["iron", "diamond", "emerald", "netherite"], [0.15, 0.25, 0.35, 0.5]);

////Waterlogged
createWaterlogSieveRecipeSeeds(input, <item:minecraft:prismarine_shard>, [0.025, 0.05, 0.1]);
createWaterlogSieveRecipeSeeds(input, <item:minecraft:prismarine_crystals>, [0.02, 0.04, 0.08]);
createWaterlogSieveRecipeSeeds(input, <item:exnihilosequentia:pickle_seeds>, [0.2, 0.3, 0.4]);
createWaterlogSieveRecipeSeeds(input, <item:exnihilosequentia:blue_coral_larvae>, [0.05, 0.1, 0.2]);
createWaterlogSieveRecipeSeeds(input, <item:exnihilosequentia:pink_coral_larvae>, [0.05, 0.1, 0.2]);
createWaterlogSieveRecipeSeeds(input, <item:exnihilosequentia:purple_coral_larvae>, [0.05, 0.1, 0.2]);
createWaterlogSieveRecipeSeeds(input, <item:exnihilosequentia:red_coral_larvae>, [0.05, 0.1, 0.2]);
createWaterlogSieveRecipeSeeds(input, <item:exnihilosequentia:yellow_coral_larvae>, [0.05, 0.1, 0.2]);

for item in <tag:items:skyselection:seeds/water> {
	createWaterSieveRecipe(input, item, ["iron", "diamond", "emerald", "netherite"], [0.01, 0.025, 0.05, 0.1]);
}

///dust
input = <item:exnihilosequentia:dust>;
createSieveRecipe(input, <item:minecraft:blaze_powder>, ["iron", "diamond", "emerald", "netherite"], [0.04, 0.08, 0.15, 0.25]);
createSieveRecipe(input, <item:exnihilosequentia:lead_pieces>, ["iron", "diamond", "emerald", "netherite"], [0.075, 0.125, 0.225, 0.35]);
createSieveRecipe(input, <item:exnihilosequentia:nickel_pieces>, ["iron", "diamond", "emerald", "netherite"], [0.075, 0.125, 0.225, 0.35]);
createSieveRecipe(input, <item:exnihilosequentia:platinum_pieces>, ["diamond", "emerald", "netherite"], [0.015, 0.05, 0.1]);
createSieveRecipe(input, <item:exnihilosequentia:tin_pieces>, ["iron", "diamond", "emerald", "netherite"], [0.075, 0.125, 0.225, 0.35]);
createSieveRecipe(input, <item:exnihilosequentia:silver_pieces>, ["iron", "diamond", "emerald", "netherite"], [0.075, 0.125, 0.225, 0.35]);
createSieveRecipe(input, <item:exnihilosequentia:zinc_pieces>, ["iron", "diamond", "emerald", "netherite"], [0.075, 0.125, 0.225, 0.35]);
createSieveRecipe(input, <item:minecraft:gunpowder>, ["string", "flint", "iron", "diamond"], [0.04, 0.08, 0.15, 0.25]);
createSieveRecipe(input, <item:minecraft:bone_meal>, ["string", "flint", "iron", "diamond"], [0.2, 0.3, 0.4, 0.6]);
createSieveRecipe(input, <item:exnihilosequentia:iron_pieces>, ["flint", "iron", "diamond", "emerald", "netherite"], [0.3, 0.5, 0.45, 0.6, 0.75]);
createSieveRecipe(input, <item:minecraft:redstone>, ["iron", "diamond", "emerald", "netherite"], [0.2, 0.3, 0.4, 0.6]);

///crushed end stone
input = <item:exnihilosequentia:crushed_end_stone>;
createSieveRecipe(input, <item:minecraft:ender_pearl>, ["diamond", "emerald", "netherite"], [0.01, 0.02, 0.05]);
createSieveRecipe(input, <item:exnihilosequentia:platinum_pieces>, ["iron", "diamond", "emerald", "netherite"], [0.025, 0.05, 0.1, 0.2]);
createSieveRecipe(input, <item:exnihilosequentia:uranium_pieces>, ["iron", "diamond", "emerald", "netherite"], [0.075, 0.15, 0.25, 0.5]);

///crushed netherrack
input = <item:exnihilosequentia:crushed_netherrack>;
createSieveRecipe(input, <item:minecraft:glowstone_dust>, ["iron", "diamond", "emerald", "netherite"], [0.1, 0.2, 0.3, 0.5]);
createSieveRecipe(input, <item:exnihilosequentia:gold_pieces>, ["flint", "iron", "diamond", "emerald", "netherite"], [0.15, 0.25, 0.4, 0.55, 0.75]);
createSieveRecipe(input, <item:minecraft:netherite_scrap>, ["diamond", "emerald", "netherite"], [0.008, 0.015, 0.05]);
createSieveRecipe(input, <item:exnihilosequentia:tin_pieces>, ["iron", "diamond", "emerald", "netherite"], [0.075, 0.125, 0.225, 0.35]);
createSieveRecipe(input, <item:exnihilotinkers:cobalt_pieces>, ["iron", "diamond", "emerald", "netherite"], [0.025, 0.075, 0.125, 0.2]);
createSieveRecipe(input, <item:exnihilosequentia:diorite_pebble>, ["string", "string", "flint", "flint"], [0.666, 0.333, 0.8, 0.5]);

///soul sand
input = <item:minecraft:soul_sand>;
createSieveRecipe(input, <item:minecraft:ghast_tear>, ["diamond", "emerald", "netherite"], [0.02, 0.05, 0.1]);
createSieveRecipe(input, <item:minecraft:nether_wart>, ["string", "flint", "iron", "diamond", "emerald", "netherite"], [0.02, 0.05, 0.1, 0.175, 0.25, 0.4]);
createSieveRecipe(input, <item:minecraft:glowstone_dust>, ["flint", "iron", "diamond", "emerald", "netherite"], [0.025, 0.1, 0.15, 0.25, 0.4]);
createSieveRecipe(input, <item:minecraft:quartz>, ["flint", "iron", "iron", "diamond", "diamond", "emerald", "emerald", "netherite", "netherite", "netherite"], [0.75, 1.0, 0.25, 1.0, 0.6, 1.0, 1.0, 1.0, 1.0, 0.6]);
