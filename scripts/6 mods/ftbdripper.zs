#priority 10
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.fluid.Fluid;

function createDripRecipe(input as IItemStack, output as IItemStack, chance as float) as void {
	var recipename as string = "drip_" + input.registryName.path + "_" + output.registryName.path;
	<recipetype:ftbdripper:drip>.addJsonRecipe(recipename, {
		"inputBlock": input,
		"inputItem": input,
		"outputBlock": output,
		"outputItem": output,
		"chance": chance
	});
}

//createDripRecipe(<item:contenttweaker:finite_lava_cobble>, <item:minecraft:obsidian>, 0.8);
//createDripRecipe(<item:minecraft:cobblestone>, <item:compressium:cobblestone_1>, 0.6);
//createDripRecipe(<item:compressium:cobblestone_1>, <item:compressium:cobblestone_2>, 0.3);
//createDripRecipe(<item:compressium:cobblestone_2>, <item:compressium:cobblestone_3>, 0.05);
//createDripRecipe(<item:compressium:cobblestone_3>, <item:compressium:cobblestone_4>, 0.001);