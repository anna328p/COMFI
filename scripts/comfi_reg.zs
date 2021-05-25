#priority 1000
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import crafttweaker.game.IGame;

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