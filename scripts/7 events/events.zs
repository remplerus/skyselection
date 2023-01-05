#priority 0
import crafttweaker.api.entity.type.item.ItemEntity;
import crafttweaker.api.entity.type.projectile.Projectile;
import crafttweaker.api.event.item.ItemTossEvent;
import crafttweaker.api.event.entity.player.interact.RightClickItemEvent;
import crafttweaker.api.event.entity.player.interact.RightClickBlockEvent;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.util.math.Rotation;
import crafttweaker.api.world.ServerLevel;
import crafttweaker.api.world.DamageSource;

CTEventManager.register<RightClickItemEvent>((event) => {
	val player = event.player;
	val level = player.level;
	val itemStack = event.itemStack;
	
	if level.isClientSide {
		return;
	}
	val serverLevel = level as ServerLevel;
	val server = serverLevel.server;
	val blockPos = player.blockPosition();
	
	if <item:contenttweaker:stone_bowl_full>.matches(itemStack) {
		server.executeCommand("loot give @p loot morenugget:blocks/water_bowl", true);
		itemStack.asMutable().shrink();
		level.addFreshEntity(new ItemEntity(level, blockPos.x + 0.5, blockPos.y + 0.5, blockPos.z + 0.5, <item:contenttweaker:stone_bowl_half>));
	}
	if <item:contenttweaker:stone_bowl_half>.matches(itemStack) {
		server.executeCommand("loot give @p loot morenugget:blocks/water_bowl_1", true);
		itemStack.asMutable().shrink();
		level.addFreshEntity(new ItemEntity(level, blockPos.x + 0.5, blockPos.y + 0.5, blockPos.z + 0.5, <item:contenttweaker:stone_bowl>));
	}
	
	if <item:contenttweaker:nether_bowl_full>.matches(itemStack) {
		server.executeCommand("loot give @p loot morenugget:blocks/nether_bowl", true);
		itemStack.asMutable().shrink();
		level.addFreshEntity(new ItemEntity(level, blockPos.x + 0.5, blockPos.y + 0.5, blockPos.z + 0.5, <item:contenttweaker:nether_bowl_half>));
	}
	if <item:contenttweaker:nether_bowl_half>.matches(itemStack) {
		server.executeCommand("loot give @p loot morenugget:blocks/nether_bowl_1", true);
		itemStack.asMutable().shrink();
		level.addFreshEntity(new ItemEntity(level, blockPos.x + 0.5, blockPos.y + 0.5, blockPos.z + 0.5, <item:contenttweaker:nether_bowl>));
	}
	
	if <item:contenttweaker:endstone_bowl_full>.matches(itemStack) {
		server.executeCommand("loot give @p loot morenugget:blocks/void_bowl", true);
		itemStack.asMutable().shrink();
		level.addFreshEntity(new ItemEntity(level, blockPos.x + 0.5, blockPos.y + 0.5, blockPos.z + 0.5, <item:contenttweaker:endstone_bowl_half>));
	}
	if <item:contenttweaker:endstone_bowl_half>.matches(itemStack) {
		server.executeCommand("loot give @p loot morenugget:blocks/void_bowl_1", true);
		itemStack.asMutable().shrink();
		level.addFreshEntity(new ItemEntity(level, blockPos.x + 0.5, blockPos.y + 0.5, blockPos.z + 0.5, <item:contenttweaker:endstone_bowl>));
	}
	
	if <item:contenttweaker:unlock_normal>.matches(itemStack) {
		server.executeCommand("gamestage add @p normal", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked normal stage!");
	}
	if <item:contenttweaker:unlock_agricraft>.matches(itemStack) {
		server.executeCommand("gamestage add @p agri", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked agricraft stage!");
	}
	if <item:contenttweaker:unlock_chemistry>.matches(itemStack) {
		server.executeCommand("gamestage add @p chemistry", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked chemistry stage!");
	}
	if <item:contenttweaker:unlock_chickens>.matches(itemStack) {
		server.executeCommand("gamestage add @p chickens", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked chickens stage!");
	}
	if <item:contenttweaker:unlock_treasure>.matches(itemStack) {
		server.executeCommand("gamestage add @p treasures", true);
		server.executeCommand("gamestage add @p dripper", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked treasures stage!");
	}
	if <item:contenttweaker:unlock_compact>.matches(itemStack) {
		server.executeCommand("gamestage add @p compact", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked compact stage!");
	}
	if <item:contenttweaker:unlock_ae2>.matches(itemStack) {
		server.executeCommand("gamestage add @p ae2", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked ae2 stage!");
	}
	if <item:contenttweaker:unlock_rs>.matches(itemStack) {
		server.executeCommand("gamestage add @p refined", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked refined storage stage!");
	}
	if <item:contenttweaker:unlock_pipez>.matches(itemStack) {
		server.executeCommand("gamestage add @p pipes_1", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked pipez stage!");
	}
	if <item:contenttweaker:unlock_xnet>.matches(itemStack) {
		server.executeCommand("gamestage add @p pipes_2", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked xnet stage!");
	}
	if <item:contenttweaker:unlock_ec>.matches(itemStack) {
		server.executeCommand("gamestage add @p mining_1", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked ec mining dimension stage!");
	}
	if <item:contenttweaker:unlock_jamd>.matches(itemStack) {
		server.executeCommand("gamestage add @p mining_2", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked JAMD stage!");
	}
	if <item:contenttweaker:unlock_oceanworld>.matches(itemStack) {
		server.executeCommand("gamestage add @p mining_3", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked oceanworld stage!");
	}
	if <item:contenttweaker:unlock_undergarden>.matches(itemStack) {
		server.executeCommand("gamestage add @p forest_1", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked undergarden stage!");
	}
	if <item:contenttweaker:unlock_twilight>.matches(itemStack) {
		server.executeCommand("gamestage add @p forest_2", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked twilight forest stage!");
	}
	if <item:contenttweaker:unlock_rftoolsbuilder>.matches(itemStack) {
		server.executeCommand("gamestage add @p quarry_1", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked rftools builder stage!");
	}
	if <item:contenttweaker:unlock_enderquarry>.matches(itemStack) {
		server.executeCommand("gamestage add @p quarry_2", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked enderquarry stage!");
	}
	if <item:contenttweaker:unlock_factorium>.matches(itemStack) {
		server.executeCommand("gamestage add @p tech_1", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked factorium stage!");
	}
	if <item:contenttweaker:unlock_ftbic>.matches(itemStack) {
		server.executeCommand("gamestage add @p tech_2", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked ftbic stage!");
	}
	if <item:contenttweaker:unlock_ie>.matches(itemStack) {
		server.executeCommand("gamestage add @p tech_3", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked immersive engineering stage!");
	}
	if <item:contenttweaker:unlock_if>.matches(itemStack) {
		server.executeCommand("gamestage add @p tech_4", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked industrial foregoing stage!");
	}
	if <item:contenttweaker:unlock_mekanism>.matches(itemStack) {
		server.executeCommand("gamestage add @p tech_5", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked mekanism stage!");
	}
	if <item:contenttweaker:unlock_thermal>.matches(itemStack) {
		server.executeCommand("gamestage add @p tech_6", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked thermal stage!");
	}
	if <item:contenttweaker:unlock_botania>.matches(itemStack) {
		server.executeCommand("gamestage add @p magic_1", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked botania stage!");
	}
	if <item:contenttweaker:unlock_solarforge>.matches(itemStack) {
		server.executeCommand("gamestage add @p magic_2", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked solarforge stage!");
	}
	if <item:contenttweaker:unlock_enderflux>.matches(itemStack) {
		server.executeCommand("gamestage add @p dimstorage_1", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked enderflux stage!");
	}
	if <item:contenttweaker:unlock_tesseract>.matches(itemStack) {
		server.executeCommand("gamestage add @p dimstorage_2", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked tesseract stage!");
	}
	if <item:contenttweaker:unlock_caged>.matches(itemStack) {
		server.executeCommand("gamestage add @p mobs_1", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked caged mobs stage!");
	}
	if <item:contenttweaker:unlock_dml>.matches(itemStack) {
		server.executeCommand("gamestage add @p mobs_2", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked deep mob learning stage!");
	}
	if <item:contenttweaker:unlock_mobgrind>.matches(itemStack) {
		server.executeCommand("gamestage add @p mobs_3", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked mob grinding utils stage!");
	}
	if <item:contenttweaker:unlock_extremereactors>.matches(itemStack) {
		server.executeCommand("gamestage add @p power_1", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked extreme reactors stage!");
	}
	if <item:contenttweaker:unlock_mekanismgens>.matches(itemStack) {
		server.executeCommand("gamestage add @p power_2", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked mekanism generators stage!");
	}
	if <item:contenttweaker:unlock_powah>.matches(itemStack) {
		server.executeCommand("gamestage add @p power_3", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked powah stage!");
	}
	if <item:contenttweaker:unlock_rftoolspower>.matches(itemStack) {
		server.executeCommand("gamestage add @p power_4", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked rftools power stage!");
	}
	if <item:contenttweaker:unlock_solarflux>.matches(itemStack) {
		server.executeCommand("gamestage add @p power_5", true);
		itemStack.asMutable().shrink();
		player.sendMessage("You've unlocked solar flux stage!");
	}
});

CTEventManager.register<RightClickBlockEvent>((event) => {
	val player = event.player;
	val playerPos = player.blockPosition;
	val level = player.level;
	val itemStack = event.itemStack;
	
	if level.isClientSide {
		return;
	}
	val serverLevel = level as ServerLevel;
	val server = serverLevel.server;
	val blockPos = event.blockPos;
	
	if level.getBlockState(blockPos) == <blockstate:minecraft:chest> && !player.hasGameStage("openchest") {
		event.cancel();
		player.sendMessage("You don't have opened your questbook! Try to do that first!");
	}
	
});