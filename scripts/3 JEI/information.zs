#priority 0

import mods.jei.JEI;
import mods.jei.category.JeiCategory;
import mods.jei.category.CatalystRequiringRecipe;
import mods.jei.component.JeiDrawable;
import mods.jei.component.JeiDrawableAnimation;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.TextComponent;
import crafttweaker.api.text.TranslatableComponent;

JEI.hideCategory("twilightforest:uncrafting");
JEI.hideCategory("cyclic:packager");

#var cat = JeiCategory.create<CatalystRequiringRecipe>("resonator", new TranslatableComponent("extrautils.resonator"), <item:extrautilitiesrebirth:resonator>, <item:extrautilitiesrebirth:resonator>, category => {
#        category.catalystDrawable = JeiDrawable.ofAnimated(<resource:jeitweaker:textures/gui/jei/atlas.png>, 172, 238, 18, 18, 20, JeiDrawableAnimation.SHOW_BOTTOM_TO_TOP);
#    });
#
#function addResonatorRecipe(category as JeiCategory, output as IItemStack, input as IItemStack, tooltip as string) as void {
#	category.addRecipe([output],[input], graphics => {graphics.addTooltip("process_detail", new TextComponent(tooltip));});
#}
#
#addResonatorRecipe(cat, <item:extrautilitiesrebirth:quartzburnt>, <item:minecraft:quartz>, "8000 FE");
#addResonatorRecipe(cat, <item:extrautilitiesrebirth:rainbow_stone>, <item:extrautilitiesrebirth:stoneburnt>, "64000 FE");
#addResonatorRecipe(cat, <item:extrautilitiesrebirth:stoneburnt>, <item:extrautilitiesrebirth:polished_stone>, "8000 FE");
#addResonatorRecipe(cat, <item:extrautilitiesrebirth:upgrade_base>, <item:minecraft:light_weighted_pressure_plate>, "8000 FE");
#addResonatorRecipe(cat, <item:extrautilitiesrebirth:lunar_reactive_dust>, <item:minecraft:lapis_lazuli>, "16000 FE");
#addResonatorRecipe(cat, <item:extrautilitiesrebirth:red_coal>, <item:minecraft:coal>, "16000 FE");
#JEI.addCategory(cat);
