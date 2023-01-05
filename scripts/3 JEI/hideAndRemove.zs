#priority 19999
import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;

function hideAndRemoveCTItem(item as IItemStack) as void {
	craftingTable.remove(item);
	JEI.hideIngredient(item);
}

//avaritia
hideAndRemoveCTItem(<item:avaritia:compressed_crafting_table>);
hideAndRemoveCTItem(<item:avaritia:double_compressed_crafting_table>);
hideAndRemoveCTItem(<item:avaritia:extreme_crafting_table>);
hideAndRemoveCTItem(<item:avaritia:crystal_matrix>);
hideAndRemoveCTItem(<item:avaritia:crystal_matrix_ingot>);
hideAndRemoveCTItem(<item:avaritia:diamond_lattice>);

//botania
hideAndRemoveCTItem(<item:botania:pebble>);

//cyclic
hideAndRemoveCTItem(<item:cyclic:trash>);

//extendedcrafting
hideAndRemoveCTItem(<item:extendedcrafting:compressor>);
hideAndRemoveCTItem(<item:extendedcrafting:handheld_table>);

//factorium
hideAndRemoveCTItem(<item:factorium:mat_zinc_raw>);
hideAndRemoveCTItem(<item:factorium:mat_tin_raw>);
hideAndRemoveCTItem(<item:factorium:mat_nickel_raw>);
hideAndRemoveCTItem(<item:factorium:mat_lead_raw>);
hideAndRemoveCTItem(<item:factorium:mat_silver_raw>);

//ftbic
hideAndRemoveCTItem(<item:ftbic:tin_chunk>);
hideAndRemoveCTItem(<item:ftbic:lead_chunk>);
hideAndRemoveCTItem(<item:ftbic:aluminum_chunk>);
hideAndRemoveCTItem(<item:ftbic:uranium_chunk>);

//thermal
hideAndRemoveCTItem(<item:thermal:raw_tin>);
hideAndRemoveCTItem(<item:thermal:raw_lead>);
