#priority 1001
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
//FUNCTIONS

function createChickenEggRecipe(output as IItemStack, input as IIngredient) as void {
	mods.recipestages.Recipes.addShapeless("chickens", output.registryName.path + "_" + input.items[0].registryName.path, output, [<tag:items:forge:eggs>, input]);
}

//VARIABLES
//mc
val cobble = <tag:items:forge:cobblestone>;
val logs = <tag:items:minecraft:logs>;
val planks = <tag:items:minecraft:planks>;
val wooden_sticks = <tag:items:balm:wooden_rods>;
val iron = <tag:items:forge:ingots/iron>;
val gold = <tag:items:forge:ingots/gold>;
val diamond = <tag:items:forge:gems/diamond>;
val hay = <item:minecraft:hay_block>;

//ceramics
val ceramic_water = <item:ceramicbucket:ceramic_bucket>.withTag({Fluid: {FluidName: "minecraft:water" as string, Amount: 1000 as int}});
val ceramic_lava = <item:ceramicbucket:ceramic_bucket>.withTag({Fluid: {FluidName: "minecraft:lava" as string, Amount: 1000 as int}});

//compactmachines
val walls = <item:compactmachines:wall>;

//RECIPES

//cyclic
craftingTable.remove(<item:cyclic:workbench>);
mods.recipestages.Recipes.addShaped("treasures", "cyclic_workbench", <item:cyclic:workbench>, [[cobble,cobble],[cobble,cobble]]);
//ftbdripper
craftingTable.remove(<item:ftbdripper:dripper>);
mods.recipestages.Recipes.addShaped("dripper", "dripper", <item:ftbdripper:dripper>, [[wooden_sticks,<tag:items:minecraft:stone_slabs>,wooden_sticks],[wooden_sticks,<tag:items:skyselection:stone_buttons>,wooden_sticks]]);

//cfd
craftingTable.remove(<item:cobblefordays:tier_2>);
craftingTable.remove(<item:cobblefordays:tier_3>);
craftingTable.remove(<item:cobblefordays:tier_4>);
craftingTable.remove(<item:cobblefordays:tier_5>);

craftingTable.addShaped("cobble_tier_2", <item:cobblefordays:tier_2>, [[cobble,cobble,cobble],[<item:minecraft:water_bucket>, <item:cobblefordays:tier_1>, <item:minecraft:lava_bucket>],[cobble,cobble,cobble]]);
craftingTable.addShaped("cobble_tier_3", <item:cobblefordays:tier_3>, [[iron,iron,iron],[<item:minecraft:water_bucket>, <item:cobblefordays:tier_2>, <item:minecraft:lava_bucket>],[iron,iron,iron]]);
craftingTable.addShaped("cobble_tier_4", <item:cobblefordays:tier_4>, [[gold,gold,gold],[<item:minecraft:water_bucket>, <item:cobblefordays:tier_3>, <item:minecraft:lava_bucket>],[gold,gold,gold]]);
craftingTable.addShaped("cobble_tier_5", <item:cobblefordays:tier_5>, [[diamond,diamond,diamond],[<item:minecraft:water_bucket>, <item:cobblefordays:tier_4>, <item:minecraft:lava_bucket>],[diamond,diamond,diamond]]);
craftingTable.addShaped("cobble_tier_1_creamics", <item:cobblefordays:tier_1>, [[logs,logs,logs],[ceramic_water, <tag:items:forge:glass>, ceramic_lava],[logs,logs,logs]]);
craftingTable.addShaped("cobble_tier_2_creamics", <item:cobblefordays:tier_2>, [[cobble,cobble,cobble],[ceramic_water, <item:cobblefordays:tier_1>, ceramic_lava],[cobble,cobble,cobble]]);
craftingTable.addShaped("cobble_tier_3_creamics", <item:cobblefordays:tier_3>, [[iron,iron,iron],[ceramic_water, <item:cobblefordays:tier_2>, ceramic_lava],[iron,iron,iron]]);
craftingTable.addShaped("cobble_tier_4_creamics", <item:cobblefordays:tier_4>, [[gold,gold,gold],[ceramic_water, <item:cobblefordays:tier_3>, ceramic_lava],[gold,gold,gold]]);
craftingTable.addShaped("cobble_tier_5_creamics", <item:cobblefordays:tier_5>, [[diamond,diamond,diamond],[ceramic_water, <item:cobblefordays:tier_4>, ceramic_lava],[diamond,diamond,diamond]]);

//chickens
craftingTable.removeByModid("chickens");
mods.recipestages.Recipes.addShaped("chickens", "breeder", <item:chickens:breeder>, [[planks,planks,planks],[planks,<tag:items:forge:seeds/wheat>,planks],[hay, hay, hay]]);
mods.recipestages.Recipes.addShaped("chickens", "roost", <item:chickens:roost>, [[planks,planks,planks],[planks,<item:minecraft:air>,planks],[hay, hay, hay]]);
mods.recipestages.Recipes.addShaped("chickens", "catcher", <item:chickens:catcher>, [[<tag:items:forge:eggs>],[wooden_sticks],[<tag:items:forge:feathers>]]);

var inputs as IIngredient[] = [<tag:items:forge:dyes/lime>,<tag:items:forge:dyes/green>,<tag:items:forge:dyes/blue>,
	<tag:items:forge:dyes/yellow>,<tag:items:forge:dyes/orange>,<tag:items:forge:dyes/cyan>,
	<tag:items:forge:dyes/light_gray>,<tag:items:forge:dyes/pink>,<tag:items:forge:dyes/light_blue>,
	<tag:items:forge:dyes/gray>,<tag:items:forge:dyes/red>,<tag:items:forge:dyes/magenta>,
	<tag:items:forge:dyes/brown>,<tag:items:forge:dyes/purple>,<tag:items:forge:dyes/black>];
var outputs as IItemStack[] = [<item:chickens:colored_egg>.withTag({colourid: 5 as int, id: "chickens:lime_chicken" as string}),
<item:chickens:colored_egg>.withTag({colourid: 13 as int, id: "chickens:green_chicken" as string}),
<item:chickens:colored_egg>.withTag({colourid: 11 as int, id: "chickens:blue_chicken" as string}),
<item:chickens:colored_egg>.withTag({colourid: 4 as int, id: "chickens:yellow_chicken" as string}),
<item:chickens:colored_egg>.withTag({colourid: 1 as int, id: "chickens:orange_chicken" as string}),
<item:chickens:colored_egg>.withTag({colourid: 9 as int, id: "chickens:cyan_chicken" as string}),
<item:chickens:colored_egg>.withTag({colourid: 8 as int, id: "chickens:light_gray_chicken" as string}),
<item:chickens:colored_egg>.withTag({colourid: 6 as int, id: "chickens:pink_chicken" as string}),
<item:chickens:colored_egg>.withTag({colourid: 3 as int, id: "chickens:light_blue_chicken" as string}),
<item:chickens:colored_egg>.withTag({colourid: 7 as int, id: "chickens:gray_chicken" as string}),
<item:chickens:colored_egg>.withTag({colourid: 14 as int, id: "chickens:red_chicken" as string}),
<item:chickens:colored_egg>.withTag({colourid: 2 as int, id: "chickens:magenta_chicken" as string}),
<item:chickens:colored_egg>.withTag({colourid: 12 as int, id: "chickens:brown_chicken" as string}),
<item:chickens:colored_egg>.withTag({colourid: 10 as int, id: "chickens:purple_chicken" as string}),
<item:chickens:colored_egg>.withTag({colourid: 15 as int, id: "chickens:black_chicken" as string})];
var tmp as int[] = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14];
for ttmp in tmp {
	createChickenEggRecipe(outputs[ttmp],inputs[ttmp]);
}

//compactmachines
craftingTable.remove(<item:compactmachines:machine_tiny>);
craftingTable.remove(<item:compactmachines:machine_small>);
craftingTable.remove(<item:compactmachines:machine_normal>);
craftingTable.remove(<item:compactmachines:machine_large>);
craftingTable.remove(<item:compactmachines:machine_giant>);
craftingTable.remove(<item:compactmachines:machine_maximum>);
mods.recipestages.Recipes.addShaped("compact", "tiny_machine", <item:compactmachines:machine_tiny>, [[walls,walls,walls],[walls,<tag:items:forge:storage_blocks/copper>,walls],[walls,walls,walls]]);
mods.recipestages.Recipes.addShaped("compact", "small_machine", <item:compactmachines:machine_small>, [[walls,<tag:items:forge:storage_blocks/iron>,walls],[<tag:items:forge:storage_blocks/iron>,<item:compactmachines:machine_tiny>,<tag:items:forge:storage_blocks/iron>],[walls,<tag:items:forge:storage_blocks/iron>,walls]]);
mods.recipestages.Recipes.addShaped("compact", "normal_machine", <item:compactmachines:machine_normal>, [[walls,<tag:items:forge:storage_blocks/gold>,walls],[<tag:items:forge:storage_blocks/gold>,<item:compactmachines:machine_small>,<tag:items:forge:storage_blocks/gold>],[walls,<tag:items:forge:storage_blocks/gold>,walls]]);
mods.recipestages.Recipes.addShaped("compact", "large_machine", <item:compactmachines:machine_large>, [[walls,<tag:items:forge:obsidian>,walls],[<tag:items:forge:obsidian>,<item:compactmachines:machine_normal>,<tag:items:forge:obsidian>],[walls,<tag:items:forge:obsidian>,walls]]);
mods.recipestages.Recipes.addShaped("compact", "giant_machine", <item:compactmachines:machine_giant>, [[walls,<tag:items:forge:storage_blocks/diamond>,walls],[<tag:items:forge:storage_blocks/diamond>,<item:compactmachines:machine_large>,<tag:items:forge:storage_blocks/diamond>],[walls,<tag:items:forge:storage_blocks/diamond>,walls]]);
mods.recipestages.Recipes.addShaped("compact", "maximum_machine", <item:compactmachines:machine_maximum>, [[walls,<tag:items:forge:storage_blocks/netherite>,walls],[<tag:items:forge:storage_blocks/netherite>,<item:compactmachines:machine_giant>,<tag:items:forge:storage_blocks/netherite>],[walls,<tag:items:forge:storage_blocks/netherite>,walls]]);

//mysticalagriculture
craftingTable.removeByName("mysticalagriculture:essence/minecraft/oak_log");
craftingTable.addShapeless("mysticalagri_oak_log", <item:minecraft:oak_log> * 16, [<item:mysticalagriculture:wood_essence>,<item:mysticalagriculture:wood_essence>,<item:mysticalagriculture:wood_essence>]);