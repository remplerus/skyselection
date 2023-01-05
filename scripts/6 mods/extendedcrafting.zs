#priority 10
val air = <item:minecraft:air>;
val neutron_ingot = <item:avaritia:neutronium_ingot>;
val infini_ingot = <item:avaritia:infinity_ingot>;
val infini_cat = <item:avaritia:infinity_catalyst>;
val endest_pearl = <item:avaritia:endest_pearl>;
val cryst_ingot = <item:extendedcrafting:crystaltine_ingot>;
val cryst_block = <item:extendedcrafting:crystaltine_block>;
val wool = <tag:items:forge:wool>;
val logs = <tag:items:minecraft:logs>;
val comp_iron = <item:compressium:iron_1>;
val nether_star = <item:minecraft:nether_star>;
val comp_end = <item:compressium:endstone_1>;
val comp_quartz = <item:compressium:quartz_1>;
val ender_pearl = <item:minecraft:ender_pearl>;
val comp_red = <item:compressium:redstone_1>;
val diamond = <item:minecraft:diamond>;
val comp_lapis = <item:compressium:lapis_1>;
val ingot1 = <item:minecraft:gold_ingot>;
val ingot2 = <item:minecraft:iron_ingot>;

#remove
<recipetype:extendedcrafting:compressor>.removeAll();
<recipetype:extendedcrafting:table>.removeAll();

#shaped
mods.extendedcrafting.TableCrafting.addShaped("crystaltine_ingot", 0, cryst_ingot, [
	[diamond, comp_lapis, comp_lapis, comp_lapis, comp_lapis, comp_lapis, diamond],
	[diamond, ingot1, ingot2, nether_star, ingot2, ingot1, diamond],
	[diamond, ingot1, ingot2, nether_star, ingot2, ingot1, diamond],
	[diamond, comp_lapis, comp_lapis, comp_lapis, comp_lapis, comp_lapis, diamond]
]);

mods.extendedcrafting.TableCrafting.addShaped("creative_vending_upgrade", 4, <item:storagedrawers:creative_vending_upgrade>, [
	[neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot, endest_pearl, neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot], 
	[neutron_ingot, cryst_ingot, cryst_ingot, cryst_ingot, endest_pearl, cryst_ingot, cryst_ingot, cryst_ingot, neutron_ingot], 
	[neutron_ingot, cryst_ingot, infini_ingot, <item:storagedrawers:oak_full_drawers_4>, endest_pearl, <item:storagedrawers:oak_full_drawers_4>, infini_ingot, cryst_ingot, neutron_ingot], 
	[neutron_ingot, cryst_ingot, <item:storagedrawers:oak_full_drawers_4>, <item:storagedrawers:oak_full_drawers_4>, infini_cat, <item:storagedrawers:oak_full_drawers_4>, <item:storagedrawers:oak_full_drawers_4>, cryst_ingot, neutron_ingot], 
	[endest_pearl, endest_pearl, endest_pearl, infini_cat, infini_ingot, infini_cat, endest_pearl, endest_pearl, endest_pearl], 
	[neutron_ingot, cryst_ingot, <item:storagedrawers:oak_full_drawers_4>, <item:storagedrawers:oak_full_drawers_4>, infini_cat, <item:storagedrawers:oak_full_drawers_4>, <item:storagedrawers:oak_full_drawers_4>, cryst_ingot, neutron_ingot], 
	[neutron_ingot, cryst_ingot, infini_ingot, <item:storagedrawers:oak_full_drawers_4>, endest_pearl, <item:storagedrawers:oak_full_drawers_4>, infini_ingot, cryst_ingot, neutron_ingot], 
	[neutron_ingot, cryst_ingot, cryst_ingot, cryst_ingot, endest_pearl, cryst_ingot, cryst_ingot, cryst_ingot, neutron_ingot], 
	[neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot, endest_pearl, neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot]
]);

mods.extendedcrafting.TableCrafting.addShaped("infinity_helmet", 4, <item:avaritia:infinity_helmet>, [
	[air, neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot, air], 
	[neutron_ingot, infini_ingot, infini_ingot, infini_ingot, infini_ingot, infini_ingot, neutron_ingot], 
	[neutron_ingot, air, infini_cat, infini_ingot, infini_cat, air, neutron_ingot], 
	[neutron_ingot, infini_ingot, infini_ingot, infini_ingot, infini_ingot, infini_ingot, neutron_ingot], 
	[neutron_ingot, infini_ingot, infini_ingot, infini_ingot, infini_ingot, infini_ingot, neutron_ingot], 
	[neutron_ingot, infini_ingot, air, infini_ingot, air, infini_ingot, neutron_ingot]
]);

mods.extendedcrafting.TableCrafting.addShaped("infinity_hoe", 4, <item:avaritia:infinity_hoe>, [
	[air, air, air, neutron_ingot, air], 
	[air, infini_ingot, infini_ingot, infini_ingot, infini_ingot], 
	[infini_ingot, infini_ingot, infini_ingot, infini_ingot, infini_ingot], 
	[infini_ingot, air, air, infini_cat, infini_ingot], 
	[air, air, air, neutron_ingot, air], 
	[air, air, air, neutron_ingot, air], 
	[air, air, air, neutron_ingot, air], 
	[air, air, air, neutron_ingot, air], 
	[air, air, air, neutron_ingot, air]
]);

mods.extendedcrafting.TableCrafting.addShaped("infinity_ingot", 4, infini_ingot, [
	[neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot], 
	[neutron_ingot, cryst_ingot, infini_cat, infini_cat, cryst_ingot, infini_cat, infini_cat, cryst_ingot, neutron_ingot], 
	[neutron_ingot, infini_cat, cryst_ingot, cryst_ingot, infini_cat, cryst_ingot, cryst_ingot, infini_cat, neutron_ingot], 
	[neutron_ingot, cryst_ingot, infini_cat, infini_cat, cryst_ingot, infini_cat, infini_cat, cryst_ingot, neutron_ingot], 
	[neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot]
]);

mods.extendedcrafting.TableCrafting.addShaped("infinity_pants", 4, <item:avaritia:infinity_pants>, [
	[neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot], 
	[neutron_ingot, infini_ingot, infini_ingot, infini_ingot, infini_cat, infini_ingot, infini_ingot, infini_ingot, neutron_ingot], 
	[neutron_ingot, infini_ingot, neutron_ingot, neutron_ingot, infini_cat, neutron_ingot, neutron_ingot, infini_ingot, neutron_ingot], 
	[neutron_ingot, infini_ingot, neutron_ingot, air, air, air, neutron_ingot, infini_ingot, neutron_ingot], 
	[neutron_ingot, cryst_block, neutron_ingot, air, air, air, neutron_ingot, cryst_block, neutron_ingot], 
	[neutron_ingot, infini_ingot, neutron_ingot, air, air, air, neutron_ingot, infini_ingot, neutron_ingot], 
	[neutron_ingot, infini_ingot, neutron_ingot, air, air, air, neutron_ingot, infini_ingot, neutron_ingot], 
	[neutron_ingot, infini_ingot, neutron_ingot, air, air, air, neutron_ingot, infini_ingot, neutron_ingot], 
	[neutron_ingot, neutron_ingot, neutron_ingot, air, air, air, neutron_ingot, neutron_ingot, neutron_ingot]
]);

mods.extendedcrafting.TableCrafting.addShaped("infinity_pickaxe", 4, <item:avaritia:infinity_pickaxe>, [
	[air, infini_ingot, infini_ingot, infini_ingot, infini_ingot, infini_ingot, infini_ingot, infini_ingot, air], 
	[infini_ingot, infini_ingot, infini_ingot, infini_ingot, infini_cat, infini_ingot, infini_ingot, infini_ingot, infini_ingot], 
	[infini_ingot, infini_ingot, air, air, neutron_ingot, air, air, infini_ingot, infini_ingot], 
	[air, air, air, air, neutron_ingot, air, air, air, air], 
	[air, air, air, air, neutron_ingot, air, air, air, air], 
	[air, air, air, air, neutron_ingot, air, air, air, air], 
	[air, air, air, air, neutron_ingot, air, air, air, air], 
	[air, air, air, air, neutron_ingot, air, air, air, air], 
	[air, air, air, air, neutron_ingot, air, air, air, air]
]);

mods.extendedcrafting.TableCrafting.addShaped("infinity_shovel", 4, <item:avaritia:infinity_shovel>, [
	[air, air, air, air, air, air, infini_ingot, infini_ingot, infini_ingot], 
	[air, air, air, air, air, infini_ingot, infini_ingot, infini_cat, infini_ingot], 
	[air, air, air, air, air, air, infini_ingot, infini_ingot, infini_ingot], 
	[air, air, air, air, air, neutron_ingot, air, infini_ingot, air], 
	[air, air, air, air, neutron_ingot, air, air, air, air], 
	[air, air, air, neutron_ingot, air, air, air, air, air], 
	[air, air, neutron_ingot, air, air, air, air, air, air], 
	[air, neutron_ingot, air, air, air, air, air, air, air], 
	[neutron_ingot, air, air, air, air, air, air, air, air]
]);

mods.extendedcrafting.TableCrafting.addShaped("infinity_sword", 4, <item:avaritia:infinity_sword>, [
	[air, air, air, air, air, air, air, infini_ingot, infini_ingot], 
	[air, air, air, air, air, air, infini_ingot, infini_ingot, infini_ingot], 
	[air, air, air, air, air, infini_ingot, infini_ingot, infini_ingot, air], 
	[air, air, air, air, infini_ingot, infini_ingot, infini_ingot, air, air], 
	[air, cryst_ingot, air, infini_ingot, infini_ingot, infini_ingot, air, air, air], 
	[air, air, cryst_ingot, infini_ingot, infini_ingot, air, air, air, air], 
	[air, air, neutron_ingot, cryst_ingot, air, air, air, air, air], 
	[air, neutron_ingot, air, air, cryst_ingot, air, air, air, air], 
	[infini_cat, air, air, air, air, air, air, air, air]
]);

mods.extendedcrafting.TableCrafting.addShaped("infinity_axe", 4, <item:avaritia:infinity_axe>, [
	[air, infini_ingot, air, air, air], 
	[infini_ingot, infini_ingot, infini_ingot, infini_ingot, infini_ingot], 
	[infini_ingot, infini_ingot, infini_cat, infini_ingot, air], 
	[air, infini_ingot, neutron_ingot, air, air], 
	[air, air, neutron_ingot, air, air], 
	[air, air, neutron_ingot, air, air], 
	[air, air, neutron_ingot, air, air], 
	[air, air, neutron_ingot, air, air], 
	[air, air, neutron_ingot, air, air]
]);

mods.extendedcrafting.TableCrafting.addShaped("infinity_boots", 4, <item:avaritia:infinity_boots>, [
	[air, neutron_ingot, neutron_ingot, neutron_ingot, air, neutron_ingot, neutron_ingot, neutron_ingot, air], 
	[air, neutron_ingot, infini_ingot, neutron_ingot, air, neutron_ingot, infini_ingot, neutron_ingot, air], 
	[air, neutron_ingot, infini_ingot, neutron_ingot, air, neutron_ingot, infini_ingot, neutron_ingot, air], 
	[neutron_ingot, neutron_ingot, infini_ingot, neutron_ingot, air, neutron_ingot, infini_ingot, neutron_ingot, neutron_ingot], 
	[neutron_ingot, infini_ingot, infini_ingot, neutron_ingot, air, neutron_ingot, infini_ingot, infini_ingot, neutron_ingot], 
	[neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot, air, neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot]
]);

mods.extendedcrafting.TableCrafting.addShaped("infinity_bow", 4, <item:avaritia:infinity_bow>, [
	[air, air, air, infini_ingot, infini_ingot], 
	[air, air, infini_ingot, air, wool], 
	[air, infini_ingot, air, air, wool], 
	[infini_ingot, air, air, air, wool], 
	[infini_cat, air, air, air, wool], 
	[infini_ingot, air, air, air, wool], 
	[air, infini_ingot, air, air, wool], 
	[air, air, infini_ingot, air, wool], 
	[air, air, air, infini_ingot, infini_ingot]
]);

mods.extendedcrafting.TableCrafting.addShaped("infinity_chestplate", 4, <item:avaritia:infinity_chestplate>, [
	[air, neutron_ingot, neutron_ingot, air, air, air, neutron_ingot, neutron_ingot, air], 
	[neutron_ingot, neutron_ingot, neutron_ingot, air, air, air, neutron_ingot, neutron_ingot, neutron_ingot], 
	[neutron_ingot, neutron_ingot, neutron_ingot, air, air, air, neutron_ingot, neutron_ingot, neutron_ingot], 
	[air, neutron_ingot, infini_ingot, infini_ingot, infini_ingot, infini_ingot, infini_ingot, neutron_ingot, air], 
	[air, neutron_ingot, infini_ingot, infini_ingot, infini_cat, infini_ingot, infini_ingot, neutron_ingot, air], 
	[air, neutron_ingot, infini_ingot, infini_ingot, infini_ingot, infini_ingot, infini_ingot, neutron_ingot, air], 
	[air, neutron_ingot, infini_ingot, infini_ingot, infini_ingot, infini_ingot, infini_ingot, neutron_ingot, air], 
	[air, neutron_ingot, infini_ingot, infini_ingot, infini_ingot, infini_ingot, infini_ingot, neutron_ingot, air], 
	[air, air, neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot, neutron_ingot, air, air]
]);

mods.extendedcrafting.TableCrafting.addShaped("skull_fire_sword", 4, <item:avaritia:skull_fire_sword>, [
	[air, air, air, air, air, air, air, cryst_ingot, <item:minecraft:blaze_powder>], 
	[air, air, air, air, air, air, cryst_ingot, <item:minecraft:blaze_powder>, cryst_ingot], 
	[air, air, air, air, air, cryst_ingot, <item:minecraft:blaze_powder>, cryst_ingot, air], 
	[air, air, air, air, cryst_ingot, <item:minecraft:blaze_powder>, cryst_ingot, air, air], 
	[air, <item:minecraft:bone>, air, cryst_ingot, <item:minecraft:blaze_powder>, cryst_ingot, air, air, air], 
	[air, air, <item:minecraft:bone>, <item:minecraft:blaze_powder>, cryst_ingot, air, air, air, air], 
	[air, air, logs, <item:minecraft:bone>, air, air, air, air, air], 
	[air, logs, air, air, <item:minecraft:bone>, air, air, air, air], 
	[nether_star, air, air, air, air, air, air, air, air]
]);

mods.extendedcrafting.TableCrafting.addShaped("endest_pearl", 4, endest_pearl, [
	[air, air, air, comp_end, comp_end, comp_end, air, air, air], 
	[air, comp_end, comp_end, ender_pearl, ender_pearl, ender_pearl, comp_end, comp_end, air], 
	[air, comp_end, ender_pearl, ender_pearl, ender_pearl, ender_pearl, ender_pearl, comp_end, air], 
	[comp_end, ender_pearl, ender_pearl, <item:rftoolsbase:infused_enderpearl>, neutron_ingot, <item:rftoolsbase:infused_enderpearl>, ender_pearl, ender_pearl, comp_end], 
	[comp_end, ender_pearl, ender_pearl, neutron_ingot, nether_star, neutron_ingot, ender_pearl, ender_pearl, comp_end], 
	[comp_end, ender_pearl, ender_pearl, <item:rftoolsbase:infused_enderpearl>, neutron_ingot, <item:rftoolsbase:infused_enderpearl>, ender_pearl, ender_pearl, comp_end], 
	[air, comp_end, ender_pearl, ender_pearl, ender_pearl, ender_pearl, ender_pearl, comp_end, air], 
	[air, comp_end, comp_end, ender_pearl, ender_pearl, ender_pearl, comp_end, comp_end, air], 
	[air, air, air, comp_end, comp_end, comp_end, air, air, air]
]);

mods.extendedcrafting.TableCrafting.addShaped("neutron_collector", 4, <item:avaritia:neutron_collector>, [
	[comp_iron, comp_iron, comp_quartz, comp_quartz, comp_quartz, comp_quartz, comp_quartz, comp_iron, comp_iron], 
	[comp_iron, air, comp_quartz, comp_quartz, comp_quartz, comp_quartz, comp_quartz, air, comp_iron], 
	[comp_iron, air, air, comp_red, comp_red, comp_red, air, air, comp_iron], 
	[cryst_ingot, air, comp_red, comp_red, comp_red, comp_red, comp_red, air, cryst_ingot], 
	[comp_iron, air, comp_red, comp_red, cryst_ingot, comp_red, comp_red, air, comp_iron], 
	[cryst_ingot, air, comp_red, comp_red, comp_red, comp_red, comp_red, air, cryst_ingot], 
	[comp_iron, air, air, comp_red, comp_red, comp_red, air, air, comp_iron], 
	[comp_iron, air, air, air, air, air, air, air, comp_iron], 
	[comp_iron, comp_iron, comp_iron, cryst_ingot, comp_iron, cryst_ingot, comp_iron, comp_iron, comp_iron]
]);

mods.extendedcrafting.TableCrafting.addShaped("neutronium_compressor", 4, <item:avaritia:neutronium_compressor>, [
	[comp_iron, comp_iron, comp_iron, <item:minecraft:hopper>, <item:minecraft:hopper>, <item:minecraft:hopper>, comp_iron, comp_iron, comp_iron], 
	[cryst_ingot, air, neutron_ingot, air, air, air, neutron_ingot, air, cryst_ingot], 
	[comp_iron, air, neutron_ingot, air, air, air, neutron_ingot, air, comp_iron], 
	[cryst_ingot, air, neutron_ingot, air, air, air, neutron_ingot, air, cryst_ingot], 
	[comp_red, neutron_ingot, neutron_ingot, air, <item:avaritia:neutronium>, air, neutron_ingot, neutron_ingot, comp_red], 
	[cryst_ingot, air, neutron_ingot, air, air, air, neutron_ingot, air, cryst_ingot], 
	[comp_iron, air, neutron_ingot, air, air, air, neutron_ingot, air, comp_iron], 
	[cryst_ingot, air, neutron_ingot, air, air, air, neutron_ingot, air, cryst_ingot], 
	[comp_iron, comp_iron, comp_iron, cryst_ingot, comp_iron, cryst_ingot, comp_iron, comp_iron, comp_iron]
]);

mods.extendedcrafting.TableCrafting.addShaped("star_fuel", 4, <item:avaritia:star_fuel>, [
	[<item:immersiveengineering:coke>, <item:immersiveengineering:coke>, <item:immersiveengineering:coke>, <item:mysticalagradditions:inferium_coal_block>, <item:mysticalagradditions:prudentium_coal_block>, <item:mysticalagradditions:inferium_coal_block>, <item:immersiveengineering:coke>, <item:immersiveengineering:coke>, <item:immersiveengineering:coke>], 
	[<item:immersiveengineering:coke>, <item:immersiveengineering:coke>, <item:mysticalagradditions:inferium_coal_block>, <item:mysticalagradditions:tertium_coal_block>, <item:mysticalagradditions:imperium_coal_block>, <item:mysticalagradditions:tertium_coal_block>, <item:mysticalagradditions:inferium_coal_block>, <item:immersiveengineering:coke>, <item:immersiveengineering:coke>], 
	[<item:immersiveengineering:coke>, <item:mysticalagradditions:inferium_coal_block>, <item:mysticalagradditions:tertium_coal_block>, <item:mysticalagradditions:supremium_coal_block>, <item:mysticalagradditions:imperium_coal_block>, <item:mysticalagradditions:supremium_coal_block>, <item:mysticalagradditions:tertium_coal_block>, <item:mysticalagradditions:inferium_coal_block>, <item:immersiveengineering:coke>], 
	[<item:mysticalagradditions:inferium_coal_block>, <item:mysticalagradditions:tertium_coal_block>, <item:mysticalagradditions:supremium_coal_block>, <item:mysticalagradditions:insanium_coal_block>, <item:compressium:coal_8>, <item:mysticalagradditions:insanium_coal_block>, <item:mysticalagradditions:supremium_coal_block>, <item:mysticalagradditions:tertium_coal_block>, <item:mysticalagradditions:inferium_coal_block>], 
	[<item:mysticalagradditions:prudentium_coal_block>, <item:mysticalagradditions:imperium_coal_block>, <item:mysticalagradditions:imperium_coal_block>, <item:compressium:coal_8>, <item:compressium:coal_9>, <item:compressium:coal_8>, <item:mysticalagradditions:imperium_coal_block>, <item:mysticalagradditions:imperium_coal_block>, <item:mysticalagradditions:prudentium_coal_block>], 
	[<item:mysticalagradditions:inferium_coal_block>, <item:mysticalagradditions:tertium_coal_block>, <item:mysticalagradditions:supremium_coal_block>, <item:mysticalagradditions:insanium_coal_block>, <item:compressium:coal_8>, <item:mysticalagradditions:insanium_coal_block>, <item:mysticalagradditions:supremium_coal_block>, <item:mysticalagradditions:tertium_coal_block>, <item:mysticalagradditions:inferium_coal_block>], 
	[<item:immersiveengineering:coke>, <item:mysticalagradditions:inferium_coal_block>, <item:mysticalagradditions:tertium_coal_block>, <item:mysticalagradditions:supremium_coal_block>, <item:mysticalagradditions:imperium_coal_block>, <item:mysticalagradditions:supremium_coal_block>, <item:mysticalagradditions:tertium_coal_block>, <item:mysticalagradditions:inferium_coal_block>, <item:immersiveengineering:coke>], 
	[<item:immersiveengineering:coke>, <item:immersiveengineering:coke>, <item:mysticalagradditions:inferium_coal_block>, <item:mysticalagradditions:tertium_coal_block>, <item:mysticalagradditions:imperium_coal_block>, <item:mysticalagradditions:tertium_coal_block>, <item:mysticalagradditions:inferium_coal_block>, <item:immersiveengineering:coke>, <item:immersiveengineering:coke>], 
	[<item:immersiveengineering:coke>, <item:immersiveengineering:coke>, <item:immersiveengineering:coke>, <item:mysticalagradditions:inferium_coal_block>, <item:mysticalagradditions:prudentium_coal_block>, <item:mysticalagradditions:inferium_coal_block>, <item:immersiveengineering:coke>, <item:immersiveengineering:coke>, <item:immersiveengineering:coke>]
]);

#shapeless
mods.extendedcrafting.TableCrafting.addShapeless("cosmic_meatballs", 3, <item:avaritia:cosmic_meatballs>, [
	<item:minecraft:egg>, <item:minecraft:fermented_spider_eye>, <item:minecraft:rotten_flesh>, <item:minecraft:chicken>, <item:minecraft:rabbit>, <item:minecraft:pufferfish>, 
	<item:minecraft:tropical_fish>, <item:minecraft:cod>, <item:minecraft:salmon>, <item:minecraft:porkchop>, <item:minecraft:beef>, <item:minecraft:mutton>, <item:avaritia:neutron_nugget>
]);

mods.extendedcrafting.TableCrafting.addShapeless("infinity_catalyst", 4, infini_cat, [
	<item:avaritia:singularity>.withTag({Id: "avaritia:bronze"}), <item:avaritia:singularity>.withTag({Id: "avaritia:copper"}), <item:avaritia:singularity>.withTag({Id: "avaritia:coal"}), 
	<item:avaritia:singularity>.withTag({Id: "avaritia:invar"}), <item:avaritia:singularity>.withTag({Id: "avaritia:lead"}), <item:avaritia:singularity>.withTag({Id: "avaritia:redstone"}), 
	<item:avaritia:singularity>.withTag({Id: "avaritia:tin"}), <item:avaritia:singularity>.withTag({Id: "avaritia:silver"}), <item:avaritia:singularity>.withTag({Id: "avaritia:steel"}), 
	<item:avaritia:singularity>.withTag({Id: "avaritia:platinum"}), <item:avaritia:singularity>.withTag({Id: "avaritia:lapis_lazuli"}), <item:avaritia:singularity>.withTag({Id: "avaritia:gold"}), 
	<item:avaritia:singularity>.withTag({Id: "avaritia:glowstone"}), <item:avaritia:singularity>.withTag({Id: "avaritia:emerald"}), <item:avaritia:singularity>.withTag({Id: "avaritia:aluminum"}), 
	<item:avaritia:singularity>.withTag({Id: "avaritia:diamond"}), <item:avaritia:singularity>.withTag({Id: "avaritia:electrum"}), <item:avaritia:singularity>.withTag({Id: "avaritia:iron"}), 
	<item:avaritia:singularity>.withTag({Id: "avaritia:nickel"}), <item:avaritia:cosmic_meatballs>, <item:avaritia:ultimate_stew>, endest_pearl, <item:avaritia:record_fragment>, 
	neutron_ingot, <item:extendedcrafting:ender_star_block>, cryst_block
]);

mods.extendedcrafting.TableCrafting.addShapeless("ultimate_stew", 4, <item:avaritia:ultimate_stew>, [
	<item:minecraft:apple>, <item:croptopia:bellpepper>, <item:croptopia:blackberry>, <item:croptopia:blueberry>, <item:croptopia:cantaloupe>, <item:croptopia:cranberry>, <item:croptopia:currant>, 
	<item:croptopia:elderberry>, <item:croptopia:grape>, <item:croptopia:honeydew>, <item:croptopia:kiwi>, <item:croptopia:olive>, <item:croptopia:pineapple>, <item:croptopia:raspberry>, 
	<item:croptopia:saguaro>, <item:croptopia:strawberry>, <item:croptopia:almond>, <item:croptopia:apricot>, <item:croptopia:avocado>, <item:croptopia:banana>, <item:croptopia:cherry>, 
	<item:croptopia:coconut>, <item:croptopia:date>, <item:croptopia:dragonfruit>, <item:croptopia:fig>, <item:croptopia:grapefruit>, <item:croptopia:kumquat>, <item:croptopia:lemon>, <item:croptopia:lime>, 
	<item:croptopia:mango>, <item:croptopia:nectarine>, <item:croptopia:orange>, <item:croptopia:peach>, <item:croptopia:pear>, <item:croptopia:pecan>, <item:croptopia:persimmon>, <item:croptopia:plum>, 
	<item:croptopia:starfruit>, <item:croptopia:walnut>, <item:thermal:strawberry>, <item:minecraft:golden_apple>, <item:minecraft:enchanted_golden_apple>, <item:minecraft:cake>, <item:minecraft:melon_slice>, 
	<item:minecraft:carrot>, <item:minecraft:potato>, <item:minecraft:beetroot>, <item:minecraft:sweet_berries>, <item:minecraft:glow_berries>, <item:minecraft:chorus_fruit>, <item:avaritia:neutron_nugget>
]);