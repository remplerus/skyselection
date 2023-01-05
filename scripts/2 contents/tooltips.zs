#priority 10
import crafttweaker.api.text.TranslatableComponent;

val red = <constant:minecraft:formatting:dark_red>;
val gold = <constant:minecraft:formatting:gold>;
val italic = <constant:minecraft:formatting:italic>;

val unlockThrow = new TranslatableComponent("skyselection.unlockThrow").withStyle([gold, italic]);
val oceanworld = new TranslatableComponent("skyselection.warning.ocean").withStyle([red, italic]);

for item in <tag:items:skyselection:unlocks> {
	item.defaultInstance.addTooltip(unlockThrow);
}

<item:oceanworld:sea_key>.addTooltip(oceanworld);