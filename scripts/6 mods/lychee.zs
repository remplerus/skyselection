#priority 10
import crafttweaker.api.block.Block;
import crafttweaker.api.item.IItemStack;

///item burning
LycheeRecipeManager.addRecipe("skysel_burn_logs", <recipetype:lychee:item_burning>, new LycheeRecipeBuilder()
	.itemIn(<tag:items:minecraft:logs_that_burn>)
	.condition(LycheeConditions.chance(0.35D))
	.post(LycheePosts.dropItem(<item:minecraft:charcoal>)));


///item inside water
LycheeRecipeManager.addRecipe("skysel_dirty_sticks_to_clean", <recipetype:lychee:item_inside>, new LycheeRecipeBuilder()
	.itemIn(<item:contenttweaker:dirty_crop_sticks>)
	.blockIn(<block:minecraft:water>)
	.post(LycheePosts.dropItem(<item:agricraft:crop_sticks_wood>)));

///bowls on sources (treasures island)
function createSimpleDrop(input as IItemStack, block as Block, output as IItemStack) as void {
	LycheeRecipeManager.addRecipe("skysel_" + input.registryName.path + "_" + block.registryName.path, <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
		.itemIn(input)
		.blockIn(block)
		.post(LycheePosts.dropItem(output)));
}

createSimpleDrop(<item:contenttweaker:stone_bowl>, <block:contenttweaker:infinite_water_cobble>, <item:contenttweaker:stone_bowl_full>);
createSimpleDrop(<item:contenttweaker:nether_bowl>, <block:contenttweaker:finite_lava_cobble>, <item:contenttweaker:nether_bowl_half>);
createSimpleDrop(<item:contenttweaker:nether_bowl>, <block:contenttweaker:infinite_lava_cobble>, <item:contenttweaker:nether_bowl_full>);
createSimpleDrop(<item:contenttweaker:endstone_bowl>, <block:contenttweaker:finite_void_cobble>, <item:contenttweaker:endstone_bowl_half>);
createSimpleDrop(<item:contenttweaker:endstone_bowl>, <block:contenttweaker:mostly_finite_void_cobble>, <item:contenttweaker:endstone_bowl_half>);
createSimpleDrop(<item:contenttweaker:endstone_bowl>, <block:contenttweaker:infinite_void_cobble>, <item:contenttweaker:endstone_bowl_full>);
createSimpleDrop(<item:contenttweaker:finite_lava_cobble>, <block:contenttweaker:infinite_water_cobble>, <item:minecraft:netherrack>);
createSimpleDrop(<item:contenttweaker:finite_void_cobble>, <block:contenttweaker:infinite_lava_cobble>, <item:minecraft:end_stone>);
createSimpleDrop(<item:minecraft:bucket>, <block:contenttweaker:infinite_water_cobble>, <item:minecraft:water_bucket>);
createSimpleDrop(<item:ceramicbucket:ceramic_bucket>, <block:contenttweaker:infinite_water_cobble>, <item:ceramicbucket:ceramic_bucket>.withTag({Fluid: {FluidName: "minecraft:water" as string, Amount: 1000 as int}}));

///pickaxe on solid wall (compact island)
LycheeRecipeManager.addRecipe("skysel_wooden_pickaxe_solid_wall", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
	.itemIn(<tag:items:skyselection:tier1_pick>)
	.blockIn(<block:compactmachines:solid_wall>)
	.post([LycheePosts.random([
		LycheePosts.dropItem(<item:minecraft:string>).withWeight(3),
		LycheePosts.dropItem(<item:minecraft:bone>).withWeight(3),
		LycheePosts.dropItem(<item:minecraft:rotten_flesh>).withWeight(3),
		LycheePosts.dropItem(<item:minecraft:iron_nugget>).withWeight(1),
		LycheePosts.dropItem(<item:exnihilosequentia:copper_nugget>).withWeight(1),
		LycheePosts.dropItem(<item:morenugget:coal_nuggest>).withWeight(5),
		LycheePosts.dropItem(<item:exnihilosequentia:stone_pebble>).withWeight(20),
		LycheePosts.dropItem(<item:minecraft:clay_ball>).withWeight(12),
		LycheePosts.dropXp(0).withWeight(100)]
	), LycheePosts.damageItem(1)]));
	
LycheeRecipeManager.addRecipe("skysel_stone_pickaxe_solid_wall", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
	.itemIn(<tag:items:skyselection:tier2_pick>)
	.blockIn(<block:compactmachines:solid_wall>)
	.post([LycheePosts.random([
		LycheePosts.dropItem(<item:minecraft:string>).withWeight(5),
		LycheePosts.dropItem(<item:minecraft:bone>).withWeight(5),
		LycheePosts.dropItem(<item:minecraft:rotten_flesh>).withWeight(5),
		LycheePosts.dropItem(<item:minecraft:iron_nugget>).withWeight(4),
		LycheePosts.dropItem(<item:exnihilosequentia:copper_nugget>).withWeight(5),
		LycheePosts.dropItem(<item:morenugget:coal_nuggest>).withWeight(8),
		LycheePosts.dropItem(<item:exnihilosequentia:stone_pebble>).withWeight(35),
		LycheePosts.dropItem(<item:minecraft:clay_ball>).withWeight(6),
		LycheePosts.dropXp(0).withWeight(80)]
	), LycheePosts.damageItem(1)]));

LycheeRecipeManager.addRecipe("skysel_iron_pickaxe_solid_wall", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
	.itemIn(<tag:items:skyselection:tier3_pick>)
	.blockIn(<block:compactmachines:solid_wall>)
	.post([LycheePosts.random([
		LycheePosts.dropItem(<item:minecraft:string>).withWeight(5),
		LycheePosts.dropItem(<item:minecraft:bone>).withWeight(8),
		LycheePosts.dropItem(<item:minecraft:rotten_flesh>).withWeight(4),
		LycheePosts.dropItem(<item:minecraft:iron_ingot>).withWeight(5),
		LycheePosts.dropItem(<item:minecraft:gold_nugget>).withWeight(15),
		LycheePosts.dropItem(<item:minecraft:copper_ingot>).withWeight(8),
		LycheePosts.dropItem(<item:minecraft:coal>).withWeight(12),
		LycheePosts.dropItem(<item:morenugget:diamond_nuggest>).withWeight(1),
		LycheePosts.dropItem(<item:exnihilosequentia:stone_pebble>).withWeight(30),
		LycheePosts.dropItem(<item:minecraft:clay_ball>).withWeight(3),
		LycheePosts.dropXp(0).withWeight(60)]
	), LycheePosts.damageItem(1)]));

LycheeRecipeManager.addRecipe("skysel_diamond_pickaxe_solid_wall", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
	.itemIn(<tag:items:skyselection:tier4_pick>)
	.blockIn(<block:compactmachines:solid_wall>)
	.post([LycheePosts.random([
		LycheePosts.dropItem(<item:minecraft:iron_ingot>).withWeight(15),
		LycheePosts.dropItem(<item:minecraft:gold_ingot>).withWeight(6),
		LycheePosts.dropItem(<item:minecraft:copper_ingot>).withWeight(10),
		LycheePosts.dropItem(<item:minecraft:coal_block>).withWeight(7),
		LycheePosts.dropItem(<item:minecraft:cobblestone>).withWeight(20),
		LycheePosts.dropItem(<item:morenugget:diamond_nuggest>).withWeight(5),
		LycheePosts.dropItem(<item:morenugget:netherite_nuggest>).withWeight(1),
		LycheePosts.dropXp(0).withWeight(40)]
	), LycheePosts.damageItem(1)]));
	
LycheeRecipeManager.addRecipe("skysel_golden_pickaxe_solid_wall", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
	.itemIn(<tag:items:skyselection:tier_s_pick>)
	.blockIn(<block:compactmachines:solid_wall>)
	.post([LycheePosts.random([
		LycheePosts.dropItem(<item:minecraft:gold_block>).withWeight(5),
		LycheePosts.dropXp(0).withWeight(10)]
	), LycheePosts.damageItem(1)]));

LycheeRecipeManager.addRecipe("skysel_netherite_pickaxe_solid_wall", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
	.itemIn(<tag:items:skyselection:tier5_pick>)
	.blockIn(<block:compactmachines:solid_wall>)
	.post([LycheePosts.random([
		LycheePosts.dropItem(<item:minecraft:iron_block>).withWeight(10),
		LycheePosts.dropItem(<item:minecraft:copper_block>).withWeight(8),
		LycheePosts.dropItem(<item:minecraft:gold_block>).withWeight(5),
		LycheePosts.dropItem(<item:minecraft:coal_block>).withWeight(10),
		LycheePosts.dropItem(<item:minecraft:diamond>).withWeight(10),
		LycheePosts.dropItem(<item:compressium:cobblestone_2>).withWeight(5),
		LycheePosts.dropItem(<item:morenugget:netherite_nuggest>).withWeight(5),
		LycheePosts.dropItem(<item:minecraft:emerald>).withWeight(2),
		LycheePosts.dropXp(0).withWeight(20)]
	), LycheePosts.damageItem(1)]));