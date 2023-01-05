#priority 1000
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;

//mc
val air = <item:minecraft:air>;
val cobble = <tag:items:forge:cobblestone>;
val obsidian = <item:minecraft:obsidian>;
val netherrack = <item:minecraft:netherrack>;
val stick = <item:minecraft:stick>;
val end_stone = <item:minecraft:end_stone>;
val logs = <tag:items:minecraft:logs>;
val iron = <tag:items:forge:ingots/iron>;
val gold = <tag:items:forge:ingots/gold>;
val diamond = <tag:items:forge:gems/diamond>;

//new items
val finite_lava = <item:contenttweaker:finite_lava_cobble>;
val finite_void = <item:contenttweaker:finite_void_cobble>;
val most_finite_void = <item:contenttweaker:mostly_finite_void_cobble>;
val dirt_stick = <item:contenttweaker:dirt_stick>;

//mysticalagriculture
val dirt_essence = <item:mysticalagriculture:dirt_essence>;

//chickens
val chicken_water = <item:chickens:liquid_egg>.withTag({id: "minecraft:water" as string});
val chicken_lava = <item:chickens:liquid_egg>.withTag({id: "minecraft:lava" as string});

function createCookRecipe(name as string, input as IIngredient, output as IItemStack, xp as float, cookTime as int) as void {
	furnace.addRecipe(name + "_in_furnace", output, input, xp, cookTime);
	campfire.addRecipe(name + "_in_campfire", output, input, xp, cookTime*2);
	blastFurnace.addRecipe(name + "_in_blastfurnace", output, input, xp*2, cookTime);
	smoker.addRecipe(name + "_in_smoker", output, input, xp*2, cookTime*2);
}

//any
craftingTable.addShaped("16_sticks", <item:minecraft:stick> * 16, [[<tag:items:minecraft:logs_that_burn>],[<tag:items:minecraft:logs_that_burn>]]);
craftingTable.addShaped("uncooked_monster_jerky", <item:contenttweaker:uncooked_monster_jerky>, [[<item:minecraft:rotten_flesh>],[<item:minecraft:rotten_flesh>]]);
createCookRecipe("cooked_monster_jerky", <item:contenttweaker:uncooked_monster_jerky>, <item:contenttweaker:monster_jerky>, 1.0f, 200);
createCookRecipe("leather_from_rflesh", <item:minecraft:rotten_flesh>, <item:minecraft:leather>, 0.0f, 200);
//createCookRecipe("cooked_chicken", <item:chickens:chicken_item>, <item:minecraft:cooked_chicken>, 1.0f, 40);

//nuggest
craftingTable.addShapeless("lapis_2_nugget", <item:morenugget:lapis_nuggest> * 9, [<tag:items:forge:gems/lapis>]);

//agri
mods.recipestages.Recipes.addShaped("agri", "dirt_essence_2_dirt_stick", dirt_stick*2, [[dirt_essence,dirt_essence],[dirt_essence,dirt_essence]]);
mods.recipestages.Recipes.addShaped("agri", "dirt_stick_2_dirty_crop_sticks", <item:contenttweaker:dirty_crop_sticks>, [[dirt_stick,dirt_stick],[dirt_stick,dirt_stick]]);

//treasures
mods.recipestages.Recipes.addShaped("treasures", "finite_lava_cobble", finite_lava, [[cobble, cobble, cobble], [cobble, stick, cobble], [cobble, cobble, cobble]]);
mods.recipestages.Recipes.addShaped("treasures", "infinite_lava_cobble", <item:contenttweaker:infinite_lava_cobble>, [[finite_lava,finite_lava,finite_lava],[finite_lava,finite_lava,finite_lava],[finite_lava,finite_lava,finite_lava]]);
mods.recipestages.Recipes.addShaped("treasures", "finite_void_cobble", finite_void, [[obsidian, cobble, obsidian],[cobble, <item:contenttweaker:infinite_lava_cobble>, cobble],[obsidian, cobble, obsidian]]);
mods.recipestages.Recipes.addShaped("treasures", "most_finite_void_cobble", most_finite_void, [[obsidian, end_stone, obsidian],[end_stone, finite_void, end_stone],[obsidian, end_stone, obsidian]]);
mods.recipestages.Recipes.addShaped("treasures", "infinite_void_cobble", <item:contenttweaker:infinite_void_cobble>, [[finite_void, end_stone, finite_void],[end_stone, most_finite_void, end_stone],[finite_void, end_stone, finite_void]]);
mods.recipestages.Recipes.addShaped("treasures", "stone_bowl", <item:contenttweaker:stone_bowl>, [[cobble, air, cobble],[air, cobble, air]]);
mods.recipestages.Recipes.addShaped("treasures", "nether_bowl", <item:contenttweaker:nether_bowl>, [[netherrack, air, netherrack],[air, <item:contenttweaker:stone_bowl>, air]]);
mods.recipestages.Recipes.addShaped("treasures", "endstone_bowl", <item:contenttweaker:endstone_bowl>, [[end_stone, air, end_stone],[air, <item:contenttweaker:nether_bowl>, air]]);

//chickens
mods.recipestages.Recipes.addShaped("chickens", "cobble_tier_1_chickens", <item:cobblefordays:tier_1>, [[logs,logs,logs],[chicken_water, <tag:items:forge:glass>, chicken_lava],[logs,logs,logs]]);
mods.recipestages.Recipes.addShaped("chickens", "cobble_tier_2_chickens", <item:cobblefordays:tier_2>, [[cobble,cobble,cobble],[chicken_water, <item:cobblefordays:tier_1>, chicken_lava],[cobble,cobble,cobble]]);
mods.recipestages.Recipes.addShaped("chickens", "cobble_tier_3_chickens", <item:cobblefordays:tier_3>, [[iron,iron,iron],[chicken_water, <item:cobblefordays:tier_2>, chicken_lava],[iron,iron,iron]]);
mods.recipestages.Recipes.addShaped("chickens", "cobble_tier_4_chickens", <item:cobblefordays:tier_4>, [[gold,gold,gold],[chicken_water, <item:cobblefordays:tier_3>, chicken_lava],[gold,gold,gold]]);
mods.recipestages.Recipes.addShaped("chickens", "cobble_tier_5_chickens", <item:cobblefordays:tier_5>, [[diamond,diamond,diamond],[chicken_water, <item:cobblefordays:tier_4>, chicken_lava],[diamond,diamond,diamond]]);









