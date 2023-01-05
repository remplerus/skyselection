#priority 500
import mods.itemstages.ItemStages;

ItemStages.createModRestriction("stonechest", "treasures");

ItemStages.createModRestriction("agricraft", "agri");

ItemStages.createModRestriction(["appmek", "appbot", "ae2additions", "ae2infinitybooster", "ae2", "ae2wtlib", "exnihiloae", "lazierae2"], "ae2");
ItemStages.createModRestriction(["projecte", "projectexpansion", "projectextended"], "projecte");

ItemStages.createModRestriction(["refinedstorage", "extrastorage", "universalgrid", "creativecrafter", "creativewirelesstransmitter", "cabletiers", "rsinfinitybooster"], "refined");

ItemStages.createModRestriction(["angelring", "ironjetpacks"], "flight");

ItemStages.createModRestriction("ec_mining_world", "mining_1");
ItemStages.createModRestriction("jamd", "mining_2");
ItemStages.createModRestriction("oceanworld", "mining_3");

ItemStages.restrict(<item:undergarden:catalyst>, "forest_1");
ItemStages.restrict(<item:contenttweaker:twilight_activator>, "forest_2");

ItemStages.createModRestriction("hyperbox", "hyperbox");

ItemStages.createModRestriction("rfd", "advanced_automation");

ItemStages.createModRestriction("pipez", s => <tag:items:skyselection:revokes>.contains(s.registryName), "pipes_1");
ItemStages.createModRestriction("xnet", "pipes_2");

ItemStages.createModRestriction("rftoolsbuilder", "quarry_1");
ItemStages.createModRestriction("enderquarryplus", "quarry_2");

ItemStages.createModRestriction("factorium", "tech_1");
ItemStages.createModRestriction("ftbic", "tech_2");
ItemStages.createModRestriction("immersiveengineering", "tech_3");
ItemStages.createModRestriction("industrialforegoing", "tech_4");
ItemStages.createModRestriction("mekanism", "tech_5");
ItemStages.createModRestriction(["thermal", "exnihilothermal"], "tech_6");

ItemStages.createModRestriction(["botania", "botanicalmachinery", "appbot", "exnaturae", "mythicbotany"], "magic_1");
ItemStages.createModRestriction("solarforge", "magic_2");

ItemStages.createModRestriction(["enderstorage", "fluxnetworks"], "dimstorage_1");
ItemStages.createModRestriction("tesseract", "dimstorage_2");

ItemStages.createModRestriction("cagedmobs", "mobs_1");
ItemStages.createModRestriction("dmlreforged", "mobs_2");
ItemStages.restrict(<item:mob_grinding_utils:saw>, "mobs_3");

ItemStages.createModRestriction("extremereactors", "power_1");
ItemStages.createModRestriction("mekanismgenerators", "power_2");
ItemStages.createModRestriction("powah", "power_3");
ItemStages.createModRestriction("rftoolsbuilder", "power_4");
ItemStages.createModRestriction("solarfluxreborn", "power_5");

ItemStages.createModRestriction("compactmachines", "compact");

ItemStages.createModRestriction("chickens", "chickens");

ItemStages.createModRestriction("ftbdripper", "dripper");

ItemStages.restrict(<item:cyclic:workbench>, "treasures");