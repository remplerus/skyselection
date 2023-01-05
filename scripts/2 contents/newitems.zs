#loader contenttweaker
import contenttweaker.builder.vanilla.item.Basic;
import contenttweaker.builder.vanilla.item.BlockItem;

function createUnlockItem(name as string) as void {
	<factory:item>.typed<Basic>()
		.tab(<tab:newItems>)
		.stacksTo(1)
		.rarity(<constant:minecraft:item/rarity:epic>)
		.build(name);
}

function createStackItem(name as string, stack as int) as void {
	<factory:item>.typed<Basic>()
		.tab(<tab:newItems>)
		.stacksTo(stack)
		.build(name);
}

function createDurabilityItem(name as string, dur as int) as void {
	<factory:item>.typed<Basic>()
		.tab(<tab:newItems>)
		.durability(dur)
		.build(name);
}

function createFoodStackItem(name as string, stack as int, nutrition as int, saturation as float, always_eat as bool) as void{
	<factory:item>.typed<Basic>()
		.tab(<tab:newItems>)
		.nutrition(nutrition)
		.saturationMod(saturation)
		.canAlwaysEat(always_eat)
		.stacksTo(stack)
		.build(name);
}

<factory:creative_tab>.create("newItems", <item:contenttweaker:unlock_normal>);

createUnlockItem("unlock_normal");
createUnlockItem("unlock_agricraft");
createUnlockItem("unlock_chemistry");
createUnlockItem("unlock_chickens");
createUnlockItem("unlock_compact");
createUnlockItem("unlock_treasure");
createUnlockItem("unlock_ae2");
createUnlockItem("unlock_rs");
createUnlockItem("unlock_pipez");
createUnlockItem("unlock_xnet");
createUnlockItem("unlock_ec");
createUnlockItem("unlock_jamd");
createUnlockItem("unlock_oceanworld");
createUnlockItem("unlock_undergarden");
createUnlockItem("unlock_twilight");
createUnlockItem("unlock_rftoolsbuilder");
createUnlockItem("unlock_enderquarry");
createUnlockItem("unlock_factorium");
createUnlockItem("unlock_ftbic");
createUnlockItem("unlock_ie");
createUnlockItem("unlock_if");
createUnlockItem("unlock_mekanism");
createUnlockItem("unlock_thermal");
createUnlockItem("unlock_botania");
createUnlockItem("unlock_solarforge");
createUnlockItem("unlock_enderflux");
createUnlockItem("unlock_tesseract");
createUnlockItem("unlock_caged");
createUnlockItem("unlock_dml");
createUnlockItem("unlock_mobgrind");
createUnlockItem("unlock_extremereactors");
createUnlockItem("unlock_mekanismgens");
createUnlockItem("unlock_powah");
createUnlockItem("unlock_rftoolspower");
createUnlockItem("unlock_solarflux");

createStackItem("uncooked_monster_jerky", 64);
createFoodStackItem("monster_jerky", 64, 5, 0.2f, false);

createStackItem("dirt_stick", 64);
createStackItem("dirty_crop_sticks", 64);

createStackItem("calcite_pebble", 64);
createStackItem("deepslate_pebble", 64);
createStackItem("dripstone_pebble", 64);
createStackItem("tuff_pebble", 64);

createStackItem("stone_bowl", 64);
createStackItem("stone_bowl_full", 64);
createStackItem("stone_bowl_half", 64);
createStackItem("nether_bowl", 64);
createStackItem("nether_bowl_full", 64);
createStackItem("nether_bowl_half", 64);
createStackItem("endstone_bowl", 64);
createStackItem("endstone_bowl_full", 64);
createStackItem("endstone_bowl_half", 64);

createUnlockItem("twilight_activator");

<factory:item>.typed<BlockItem>()
	.block(<block:contenttweaker:infinite_water_cobble>)
	.tab(<tab:newItems>)
	.stacksTo(64)
	.build("infinite_water_cobble");
<factory:item>.typed<BlockItem>()
	.block(<block:contenttweaker:finite_lava_cobble>)
	.tab(<tab:newItems>)
	.stacksTo(64)
	.build("finite_lava_cobble");
<factory:item>.typed<BlockItem>()
	.block(<block:contenttweaker:infinite_lava_cobble>)
	.tab(<tab:newItems>)
	.stacksTo(64)
	.build("infinite_lava_cobble");
<factory:item>.typed<BlockItem>()
	.block(<block:contenttweaker:finite_void_cobble>)
	.tab(<tab:newItems>)
	.stacksTo(64)
	.build("finite_void_cobble");
<factory:item>.typed<BlockItem>()
	.block(<block:contenttweaker:mostly_finite_void_cobble>)
	.tab(<tab:newItems>)
	.stacksTo(64)
	.build("mostly_finite_void_cobble");
<factory:item>.typed<BlockItem>()
	.block(<block:contenttweaker:infinite_void_cobble>)
	.tab(<tab:newItems>)
	.stacksTo(64)
	.build("infinite_void_cobble");