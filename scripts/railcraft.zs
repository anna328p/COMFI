import crafttweaker.oredict.IOreDictEntry;
import mods.railcraft.RollingMachine;

val kit_booster = <railcraft:track_kit:2>.withTag({railcraft: {kit: "railcraft_booster"}});
val kit_control = <railcraft:track_kit:4>.withTag({railcraft: {kit: "railcraft_control"}});
val kit_locking = <railcraft:track_kit:10>.withTag({railcraft: {kit: "railcraft_locking"}});
val kit_oneway = <railcraft:track_kit:11>.withTag({railcraft: {kit: "railcraft_one_way"}});

recipes.remove(<railcraft:tool_crowbar_iron>);
recipes.remove(<railcraft:tool_crowbar_steel>);
RollingMachine.remove(<railcraft:rail:0>);
RollingMachine.remove(<railcraft:rail:1>);
recipes.remove(<minecraft:golden_rail>);
recipes.remove(<railcraft:cart_tank>);
recipes.remove(kit_booster);
recipes.remove(kit_control);
recipes.remove(kit_locking);
recipes.remove(kit_oneway);
recipes.remove(<railcraft:manipulator>);
recipes.remove(<railcraft:manipulator:1>);
recipes.remove(<railcraft:manipulator:4>);
recipes.remove(<railcraft:manipulator:5>);

<railcraft:tool_crowbar_iron>.displayName = "Trackman's Crowbar";
<railcraft:tool_crowbar_steel>.displayName = "Hardened Trackman's Crowbar";

recipes.addShaped(<railcraft:tool_crowbar_iron>, [
    [<ore:gregHardHammers>, <ore:dyeRed>, <ore:stickIron>],
    [<ore:dyeRed>, <ore:stickIron>, <ore:dyeRed>],
    [<ore:stickIron>, <ore:dyeRed>, <ore:gregFiles>]
]);

recipes.addShaped(<railcraft:tool_crowbar_steel>, [
    [<ore:gregHardHammers>, <ore:dyeRed>, <ore:stickSteel>],
    [<ore:dyeRed>, <ore:stickSteel>, <ore:dyeRed>],
    [<ore:stickSteel>, <ore:dyeRed>, <ore:gregFiles>]
]);

recipes.addShaped(<railcraft:rail:0> * 6, [
    [<ore:stickIron>, <ore:gregFiles>, <ore:stickIron>],
    [<ore:stickIron>, null, <ore:stickIron>],
    [<ore:stickIron>, <ore:gregHardHammers>, <ore:stickIron>]
]);

recipes.addShapeless(<railcraft:rail:1>, [<ore:stickGold>, <ore:dustRedstone>, <ore:gregHardHammers>]);

recipes.addShapeless(<railcraft:cart_tank>, [<minecraft:minecart>, <gregtech:machine:812>]);

recipes.addShapeless(kit_booster * 8, [<railcraft:tie>, <railcraft:rail:1>, <railcraft:rail:1>, <ore:dustRedstone>, <ore:dustRedstone>]);
recipes.addShapeless(kit_control * 8, [<railcraft:tie>, <railcraft:rail:1>, <ore:gearSmallIron>, <ore:dustRedstone>, <ore:dustRedstone>]);
recipes.addShapeless(kit_locking * 4, [<railcraft:tie>, <ore:gearSmallIron>, <ore:stickIron>, <minecraft:stone_pressure_plate>, <ore:dustRedstone>]);
recipes.addShapeless(kit_oneway * 4, [<railcraft:tie>, <ore:stickIron>, <ore:stickIron>, <minecraft:stone_pressure_plate>, <ore:dustRedstone>]);

recipes.addShaped(<railcraft:manipulator>, [
    [<ore:plateBronze>, <ore:dustRedstone>, <ore:plateBronze>],
    [<ore:plateBronze>, <ore:gregWrenches>, <ore:plateBronze>],
    [<ore:plateBronze>, <minecraft:hopper>, <ore:plateBronze>]
]);

recipes.addShaped(<railcraft:manipulator:1>, [
    [<ore:plateBronze>, <minecraft:hopper>, <ore:plateBronze>],
    [<ore:plateBronze>, <ore:gregWrenches>, <ore:plateBronze>],
    [<ore:plateBronze>, <ore:dustRedstone>, <ore:plateBronze>]
]);

recipes.addShaped(<railcraft:manipulator:4>, [
    [<ore:plateBronze>, <ore:dustRedstone>, <ore:plateBronze>],
    [<ore:plateBronze>, <ore:gregWrenches>, <ore:plateBronze>],
    [<ore:plateBronze>, <fluidfunnel:funnel>, <ore:plateBronze>]
]);

recipes.addShaped(<railcraft:manipulator:5>, [
    [<ore:plateBronze>, <fluidfunnel:funnel>, <ore:plateBronze>],
    [<ore:plateBronze>, <ore:gregWrenches>, <ore:plateBronze>],
    [<ore:plateBronze>, <ore:dustRedstone>, <ore:plateBronze>]
]);