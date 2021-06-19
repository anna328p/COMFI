#priority 1000
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import crafttweaker.game.IGame;

# filters
var filterCarbonPrimitive = VanillaFactory.createItem("filter_carbon_primitive");
filterCarbonPrimitive.maxStackSize = 64;
filterCarbonPrimitive.register();

var filterSulfurPrimitive = VanillaFactory.createItem("filter_sulfur_primitive");
filterSulfurPrimitive.maxStackSize = 64;
filterSulfurPrimitive.register();

var filterDustPrimitive = VanillaFactory.createItem("filter_dust_primitive");
filterDustPrimitive.maxStackSize = 64;
filterDustPrimitive.register();

# gpu wafer
var lensQuartzite = VanillaFactory.createItem("lens_quartzite");
lensQuartzite.maxStackSize = 64;
lensQuartzite.register();

var gpuWafer = VanillaFactory.createItem("gpu_wafer");
var gpuDie = VanillaFactory.createItem("gpu_die");

gpuWafer.maxStackSize = 64;
gpuDie.maxStackSize = 64;

gpuWafer.register();
gpuDie.register();

# fluix wafers
var fluixProcessorWafer = VanillaFactory.createItem("fluix_processor_wafer");
var fluixProcessorDie = VanillaFactory.createItem("fluix_processor_die");
var fluixMemoryWafer = VanillaFactory.createItem("fluix_memory_wafer");
var fluixMemoryDie = VanillaFactory.createItem("fluix_memory_die");
var fluixBoule = VanillaFactory.createItem("fluix_boule");
var fluixWafer = VanillaFactory.createItem("fluix_wafer");

fluixProcessorWafer.maxStackSize = 64;
fluixProcessorDie.maxStackSize = 64;
fluixMemoryWafer.maxStackSize = 64;
fluixMemoryDie.maxStackSize = 64;
fluixBoule.maxStackSize = 64;
fluixWafer.maxStackSize = 64;

fluixProcessorWafer.register();
fluixProcessorDie.register();
fluixMemoryWafer.register();
fluixMemoryDie.register();
fluixBoule.register();
fluixWafer.register();

# clay soldier recipes
var livelyBlend = VanillaFactory.createItem("lively_blend");
livelyBlend.maxStackSize = 64;
livelyBlend.register();

var moldClaySoldier = VanillaFactory.createItem("mold_clay_soldier");
moldClaySoldier.maxStackSize = 64;
moldClaySoldier.register();

var formClaySoldier = VanillaFactory.createItem("form_clay_soldier");
formClaySoldier.maxStackSize = 64;
formClaySoldier.register();

# information icon
var info = VanillaFactory.createItem("information_icon");
info.maxStackSize = 64;
info.register();

# extremely useful
var cheese = VanillaFactory.createItem("cheetor");
cheese.maxStackSize = 64;
cheese.register();

var feast = VanillaFactory.createItem("faeast");
feast.maxStackSize = 64;
feast.register();

var mmm = VanillaFactory.createItem("rotisserie_cheetor");
mmm.maxStackSize = 64;
mmm.register();

var antiIceBlock = VanillaFactory.createBlock("cheetor_cube", <blockmaterial:clay>);
antiIceBlock.setLightOpacity(3);
antiIceBlock.setLightValue(15);
antiIceBlock.setBlockHardness(5.0);
antiIceBlock.setBlockResistance(5.0);
antiIceBlock.setToolClass("pickaxe");
antiIceBlock.setToolLevel(0);
antiIceBlock.setBlockSoundType(<soundtype:snow>);
antiIceBlock.register();