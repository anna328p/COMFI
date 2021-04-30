#priority 1000
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import crafttweaker.game.IGame;

# extremely useful
var zsItem = VanillaFactory.createItem("cheetor");
zsItem.maxStackSize = 64;
zsItem.register();

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