#loader contenttweaker
#priority 1000
import contenttweaker.builder.vanilla.block.Basic;

<factory:block>.typed<Basic>()
	.material(<material:minecraft:stone>)
	.strength(3F)
    .noCorrespondingItem()
    .dropsItselfRegardless()
	.build("infinite_water_cobble");

<factory:block>.typed<Basic>()
	.material(<material:minecraft:stone>)
	.lightLevel(8)
	.strength(3F)
    .noCorrespondingItem()
    .dropsItselfRegardless()
	.build("finite_lava_cobble");
	
<factory:block>.typed<Basic>()
	.material(<material:minecraft:stone>)
	.lightLevel(14)
	.strength(3F)
    .noCorrespondingItem()
    .dropsItselfRegardless()
	.build("infinite_lava_cobble");

<factory:block>.typed<Basic>()
	.material(<material:minecraft:stone>)
	.lightLevel(2)
	.strength(3F)
    .noCorrespondingItem()
    .dropsItselfRegardless()
	.build("finite_void_cobble");

<factory:block>.typed<Basic>()
	.material(<material:minecraft:stone>)
	.lightLevel(4)
	.strength(3F)
    .noCorrespondingItem()
    .dropsItselfRegardless()
	.build("mostly_finite_void_cobble");

<factory:block>.typed<Basic>()
	.material(<material:minecraft:stone>)
	.lightLevel(8)
	.strength(3F)
    .noCorrespondingItem()
    .dropsItselfRegardless()
	.build("infinite_void_cobble");

