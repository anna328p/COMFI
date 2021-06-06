import mods.contenttweaker.Item;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import mods.hungertweaker.FoodValues;
import mods.jei.JEI;

val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
val extractor = mods.gregtech.recipe.RecipeMap.getByName("extractor");
val wiremill = mods.gregtech.recipe.RecipeMap.getByName("wiremill");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");

# cookware, foodstuffs
recipes.remove(<harvestcraft:saltitem>);
recipes.remove(<harvestcraft:mortarandpestleitem>);
mods.jei.JEI.removeAndHide(<harvestcraft:flouritem>);
recipes.remove(<harvestcraft:doughitem>);
recipes.remove(<harvestcraft:beeswaxitem>);
recipes.remove(<harvestcraft:freshwateritem>);
recipes.remove(<harvestcraft:icecreamitem>);
recipes.remove(<harvestcraft:wovencottonitem>);
recipes.remove(<harvestcraft:stockitem>);

# agriculture equipment
recipes.remove(<harvestcraft:groundtrap>);
recipes.remove(<harvestcraft:watertrap>);
recipes.remove(<harvestcraft:waterfilter>);
recipes.remove(<cookingforblockheads:cooking_table>);
recipes.remove(<cookingforblockheads:sink>);
recipes.remove(<cookingforblockheads:tool_rack>);
recipes.remove(<cookingforblockheads:toaster>);
recipes.remove(<cookingforblockheads:oven>);

# fluid funnels
recipes.remove(<fluidfunnel:funnel>);
mods.jei.JEI.removeAndHide(<fluidfunnel:tank>);
mods.jei.JEI.removeAndHide(<fluidfunnel:tap>);

# decor
recipes.removeByRecipeName("quark:candle");
recipes.removeByRecipeName("harvestcraft:candledeco1_x4");
recipes.removeByRecipeName("bibliocraft:white_lanterniron");
recipes.removeByRecipeName("bibliocraft:white_lanterngold");
recipes.removeByRecipeName("chisel:chisel_iron");
recipes.removeByRecipeName("chisel:chisel_diamond");
recipes.remove(<storagedrawers:framingtable>);
recipes.remove(<platforms:platform:50>);
recipes.remove(<platforms:wrench>);
recipes.remove(<architecturecraft:sawbench>);

val panelers = [
   <bibliocraft:furniturepaneler>,
   <bibliocraft:furniturepaneler:1>,
   <bibliocraft:furniturepaneler:2>,
   <bibliocraft:furniturepaneler:3>,
   <bibliocraft:furniturepaneler:4>,
   <bibliocraft:furniturepaneler:5>,
   <bibliocraft:furniturepaneler:6>
] as IItemStack[];

val paneler_wood = [
   <minecraft:planks>,
   <minecraft:planks:1>,
   <minecraft:planks:2>,
   <minecraft:planks:3>,
   <minecraft:planks:4>,
   <minecraft:planks:5>,
   <gregtech:frame_wood>
] as IItemStack[];

for i in 0 to 7 {
   recipes.remove(panelers[i]);

   recipes.addShaped(panelers[i], [
      [<ore:gregSaws>, null, <ore:gregScrewDrivers>],
      [<ore:screwIron>, paneler_wood[i], <ore:screwIron>],
      [paneler_wood[i], paneler_wood[i], paneler_wood[i]]
   ]);

   recipes.addShaped(panelers[i], [
      [<ore:gregSaws>, null, <ore:gregScrewDrivers>],
      [<ore:screwWroughtIron>, paneler_wood[i], <ore:screwWroughtIron>],
      [paneler_wood[i], paneler_wood[i], paneler_wood[i]]
   ]);
}

# adpother
recipes.removeByRecipeName("adpother:1xitem.iron_respirator@0");
recipes.removeByRecipeName("adpother:1xitem.gold_respirator@0");
recipes.removeByRecipeName("adpother:1xitem.diamond_respirator@0");
recipes.remove(<adpother:iron_vacuum_tube>);
recipes.remove(<adpother:gold_vacuum_tube>);
recipes.remove(<adpother:diamond_vacuum_tube>);
recipes.removeByRecipeName("adpother:1xitem.iron_vacuum_bag@0");
recipes.removeByRecipeName("adpother:1xitem.gold_vacuum_bag@0");
recipes.removeByRecipeName("adpother:1xitem.diamond_vacuum_bag@0");
recipes.remove(<adpother:aerometer>);
recipes.remove(<pollutantpump:pump>);
recipes.remove(<pollutantpump:pipe>);

<adpother:iron_filter>.displayName = "Primitive Filter Hull";
<adpother:gold_filter>.displayName = "Refined Filter Hull";
<adpother:diamond_filter>.displayName = "Advanced Filter Hull";
<adpother:iron_respirator>.displayName = "Primitive Respirator";
<adpother:gold_respirator>.displayName = "Refined Respirator";
<adpother:diamond_respirator>.displayName = "Advanced Respirator";
<adpother:iron_vacuum_tube>.displayName = "Primitive Pollution Vacuum";
<adpother:gold_vacuum_tube>.displayName = "Refined Pollution Vacuum";
<adpother:diamond_vacuum_tube>.displayName = "Advanced Pollution Vacuum";
<adpother:iron_vacuum_bag>.displayName = "Primitive Vacuum Bag";
<adpother:gold_vacuum_bag>.displayName = "Refined Vacuum Bag";
<adpother:diamond_vacuum_bag>.displayName = "Advanced Vacuum Bag";
<pollutantpump:pipe>.displayName = "Pollutant Pipe";

# other
recipes.removeByRecipeName("quark:hopper");
recipes.remove(<travelersbackpack:travelers_backpack:0>);
recipes.remove(<travelersbackpack:backpack_tank>);
recipes.remove(<harvestcraft:hardenedleatheritem>);

<quark:root>.foodValues.hunger = 1;
<minecraft:fish>.foodValues.hunger = 1;
<minecraft:fish:1>.foodValues.hunger = 1;
<minecraft:cooked_fish>.foodValues.hunger = 2;
<minecraft:cooked_fish:1>.foodValues.hunger = 2;

<ftbquests:book>.addTooltip("Can be opened with hotkeys; default is GRAVE");

recipes.addShaped(<fluidfunnel:funnel>, [
   [<ore:plateBronze>, <ore:gregWrenches>, <ore:plateBronze>],
   [<ore:plateBronze>, <minecraft:bucket>, <ore:plateBronze>],
   [null, <ore:plateBronze>, null] 
]);

compressor.recipeBuilder()
   .inputs([<ore:cropCandleberry> * 4])
   .outputs(<harvestcraft:beeswaxitem>)
   .duration(320)
   .EUt(16)
   .buildAndRegister();

recipes.addShapeless(<harvestcraft:hardenedleatheritem>, [<harvestcraft:beeswaxitem>, <item:minecraft:leather>, <harvestcraft:wovencottonitem>, <ore:gregSoftHammers>]);

recipes.addShapeless(<harvestcraft:groundtrap>, [<ore:frameGtWood>, <ore:trapdoorWood>, <harvestcraft:wovencottonitem>]);
recipes.addShapeless(<harvestcraft:watertrap>, [<ore:frameGtWood>, <ore:trapdoorWood>, <minecraft:reeds>]);

recipes.addShaped(<harvestcraft:waterfilter>, [
   [<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>],
   [<minecraft:iron_bars>, <ore:frameGtWood>, <minecraft:iron_bars>],
   [<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>]
]);

recipes.addShaped(<cookingforblockheads:cooking_table>, [
   [<ore:stoneSmooth>, <ore:stoneSmooth>, <ore:stoneSmooth>],
   [<minecraft:hardened_clay>, <minecraft:crafting_table>, <minecraft:hardened_clay>],
   [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]
]);

recipes.addShaped(<cookingforblockheads:sink>, [
   [<ore:stoneSmooth>, <ore:stoneSmooth>, <ore:stoneSmooth>],
   [<minecraft:hardened_clay>, <minecraft:bucket>, <minecraft:hardened_clay>],
   [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]
]);

recipes.addShaped(<cookingforblockheads:tool_rack>, [
   [null, null, null],
   [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
   [null, <ore:gregKnives>, null]
]);

recipes.addShaped(<cookingforblockheads:toaster>, [
   [<ore:gearSmallIron>, <ore:gregFiles>, <ore:gregWrenches>],
   [<ore:plateIron>, <minecraft:flint_and_steel>, <ore:plateIron>],
   [<ore:plateIron>, <minecraft:netherrack>, <ore:plateIron>]
]);

recipes.addShaped(<cookingforblockheads:toaster>, [
   [<ore:gearSmallWroughtIron>, <ore:gregFiles>, <ore:gregWrenches>],
   [<ore:plateWroughtIron>, <minecraft:flint_and_steel>, <ore:WroughtIron>],
   [<ore:plateWroughtIron>, <minecraft:netherrack>, <ore:WroughtIron>]
]);

recipes.addShaped(<cookingforblockheads:oven>, [
   [<ore:plateIron>, <ore:gregHardHammers>, <ore:plateIron>],
   [<ore:paneGlass>, <minecraft:furnace>, <ore:paneGlass>],
   [<ore:plateIron>, <ore:chestWood>, <ore:plateIron>]
]);

recipes.addShaped(<cookingforblockheads:oven>, [
   [<ore:plateWroughtIron>, <ore:gregHardHammers>, <ore:plateWroughtIron>],
   [<ore:paneGlass>, <minecraft:furnace>, <ore:paneGlass>],
   [<ore:plateWroughtIron>, <ore:chestWood>, <ore:plateWroughtIron>]
]);

# decorative blocks and items
recipes.addShapeless(<quark:candle>, [<harvestcraft:beeswaxitem>, <ore:string>]);
recipes.addShapeless(<harvestcraft:candledeco1>, [<quark:candle>]);

recipes.addShaped(<bibliocraft:lanterniron>, [
   [null, <ore:plateIron>, null],
   [<ore:paneGlass>, <quark:candle>, <ore:paneGlass>],
   [<ore:gregWrenches>, <ore:plateIron>, <ore:gregFiles>]
]);

recipes.addShaped(<bibliocraft:lanterniron>, [
   [null, <ore:plateWroughtIron>, null],
   [<ore:paneGlass>, <quark:candle>, <ore:paneGlass>],
   [<ore:gregWrenches>, <ore:plateWroughtIron>, <ore:gregFiles>]
]);

recipes.addShaped(<bibliocraft:lanterngold>, [
   [null, <ore:plateGold>, null],
   [<ore:paneGlass>, <quark:candle>, <ore:paneGlass>],
   [<ore:gregWrenches>, <ore:plateGold>, <ore:gregFiles>]
]);

recipes.addShapeless(<chisel:chisel_iron>, [<ore:stickWood>, <ore:plateIron>, <ore:gregHardHammers>, <ore:gregFiles>]);
recipes.addShapeless(<chisel:chisel_diamond>.withTag({chiseldata: {}}), [<ore:stickWood>, <ore:plateDiamond>, <ore:gregHardHammers>, <ore:gregFiles>]);

recipes.addShaped(<storagedrawers:framingtable>, [
   [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
   [<ore:screwIron>, <ore:gregScrewDrivers>, <ore:screwIron>],
   [<ore:slabWood>, <ore:gregSaws>, <ore:slabWood>]
]);

recipes.addShaped(<storagedrawers:framingtable>, [
   [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
   [<ore:screwWroughtIron>, <ore:gregScrewDrivers>, <ore:screwWroughtIron>],
   [<ore:slabWood>, <ore:gregSaws>, <ore:slabWood>]
]);

recipes.addShaped(<platforms:platform:50>, [
   [null, <ore:dyeRed>, null],
   [<ore:plateIron>, <minecraft:crafting_table>, <ore:plateIron>],
   [null, <ore:dyeRed>, null]
]);

recipes.addShaped(<platforms:platform:50>, [
   [null, <ore:dyeRed>, null],
   [<ore:plateWroughtIron>, <minecraft:crafting_table>, <ore:plateWroughtIron>],
   [null, <ore:dyeRed>, null]
]);

recipes.addShapeless(<platforms:wrench>, [<thermalfoundation:wrench>]);

recipes.addShaped(<architecturecraft:sawbench>, [
   [<ore:plateIron>, <ore:toolHeadBuzzSawIron>, <ore:plateIron>],
   [<ore:stickWood>, <minecraft:crafting_table>, <ore:stickWood>],
   [<ore:stickWood>, <ore:gregWrenches>, <ore:stickWood>]
]);

recipes.addShaped(<architecturecraft:sawbench>, [
   [<ore:plateWroughtIron>, <ore:toolHeadBuzzSawWroughtIron>, <ore:plateWroughtIron>],
   [<ore:stickWood>, <minecraft:crafting_table>, <ore:stickWood>],
   [<ore:stickWood>, <ore:gregWrenches>, <ore:stickWood>]
]);

# Traveler's backpack
recipes.addShaped(<travelersbackpack:backpack_tank>, [
   [null, <ore:plateSteel>, null],
   [<ore:gregFiles>, <ore:paneGlass>, <ore:gregHardHammers>],
   [null, <ore:plateSteel>, null] 
]);

recipes.addShaped(<travelersbackpack:travelers_backpack>.withTag({}), [
   [<harvestcraft:hardenedleatheritem>, <ore:ringSteel>, <harvestcraft:hardenedleatheritem>],
   [<travelersbackpack:backpack_tank>, <ore:chestWood>, <travelersbackpack:backpack_tank>],
   [<harvestcraft:hardenedleatheritem>, <travelersbackpack:sleeping_bag_bottom>, <harvestcraft:hardenedleatheritem>] 
]);

# Various foodstuff recipes
macerator.findRecipe(8, [<minecraft:wheat>], null).remove();

macerator.recipeBuilder()
   .inputs([<ore:listAllgrain>])
   .outputs(<ore:dustWheat>.firstItem)
   .duration(30)
   .EUt(8)
   .buildAndRegister();

recipes.replaceAllOccurences(<harvestcraft:flouritem>, <ore:dustWheat>);
recipes.addShapeless(<ore:dustWheat>.firstItem, [<ore:listAllgrain>, <ore:gregMortars>]);

recipes.addShapeless(<harvestcraft:doughitem>, [<harvestcraft:mixingbowlitem>, <ore:dustWheat>, <ore:dustWheat>, <ore:dustWheat>, <harvestcraft:freshwateritem>]);

recipes.addShapeless(<harvestcraft:icecreamitem>, [<harvestcraft:mixingbowlitem>, <ore:listAllsugar>, <ore:dustSnow>, <ore:listAllmilk>]);

# Food mixer recipes
mixer.recipeBuilder()
   .inputs([<ore:dustWheat> * 2])
   .fluidInputs([<fluid:water> * 125])
   .outputs(<harvestcraft:doughitem>)
   .duration(320)
   .EUt(8)
   .buildAndRegister();

mixer.recipeBuilder()
   .inputs([<ore:dustWheat>, <ore:listAllegg>])
   .outputs(<harvestcraft:batteritem> * 2)
   .duration(320)
   .EUt(8)
   .buildAndRegister();

mixer.recipeBuilder()
   .inputs([<ore:dustSnow>, <ore:listAllsugar>])
   .fluidInputs([<fluid:milk> * 125])
   .outputs(<harvestcraft:icecreamitem> * 2)
   .duration(320)
   .EUt(8)
   .buildAndRegister();

furnace.addRecipe(<minecraft:bread>, <harvestcraft:doughitem>, 15);

# Extractor recipes
extractor.recipeBuilder()
   .inputs([<ore:beeComb>])
   .outputs(<ore:dropHoney>.firstItem)
   .duration(320)
   .EUt(8)
   .buildAndRegister();

extractor.recipeBuilder()
   .inputs([<quark:root>])
   .outputs(<gregtech:meta_item_1:32627> * 2)
   .duration(160)
   .EUt(8)
   .buildAndRegister();

# Woven Cotton recipes
recipes.addShapeless(<harvestcraft:wovencottonitem>, [<minecraft:string>, <minecraft:string>, <ore:cropCotton>]);

# Remove HC cheese recipe
recipes.remove(<harvestcraft:cheeseitem>);

recipes.addShapeless(<ore:seedWheat>.firstItem, [<minecraft:wheat>]);

# Adpother Recipes
recipes.addShaped(<adpother:iron_respirator>, [
   [<ore:paneGlass>, <harvestcraft:hardenedleatheritem>, <ore:paneGlass>],
   [<harvestcraft:hardenedleatheritem>, <harvestcraft:wovencottonitem>, <harvestcraft:hardenedleatheritem>],
   [<ore:gregSoftHammers>, <ore:plateBronze>, <ore:gregKnives>]
]);

recipes.addShaped(<adpother:iron_vacuum_tube>, [
   [<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>],
   [<ore:screwWroughtIron>, <minecraft:ender_pearl>, <ore:screwWroughtIron>],
   [<ore:gregHardHammers>, <ore:plateWroughtIron>, <ore:gregScrewDrivers>]
]);

recipes.addShaped(<adpother:iron_vacuum_bag>, [
   [<ore:gregSoftHammers>, <ore:plateBronze>, <ore:gregKnives>],
   [<harvestcraft:hardenedleatheritem>, <harvestcraft:wovencottonitem>, <harvestcraft:hardenedleatheritem>],
   [null, <harvestcraft:hardenedleatheritem>, null]
]);

recipes.addShaped(<adpother:gold_respirator>, [
   [<ore:paneGlass>, <ore:platePolycaprolactam>, <ore:paneGlass>],
   [<ore:platePolycaprolactam>, <ore:foilZinc>, <ore:platePolycaprolactam>],
   [<ore:gregSoftHammers>, <ore:plateAluminium>, <ore:gregKnives>]
]);

recipes.addShaped(<adpother:gold_vacuum_tube>, [
   [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>],
   [<ore:screwCobaltBrass>, <gregtech:meta_item_1:32670>, <ore:screwCobaltBrass>],
   [<ore:gregHardHammers>, <ore:plateCobaltBrass>, <ore:gregScrewDrivers>]
]);

recipes.addShaped(<adpother:gold_vacuum_bag>, [
   [<ore:gregSoftHammers>, <ore:plateAluminium>, <ore:gregKnives>],
   [<ore:platePolycaprolactam>, <ore:foilZinc>, <ore:platePolycaprolactam>],
   [null, <ore:platePolycaprolactam>, null]
]);

recipes.addShaped(<adpother:diamond_respirator>, [
   [<ore:paneGlass>, <ore:platePolytetrafluoroethylene>, <ore:paneGlass>],
   [<ore:platePolytetrafluoroethylene>, <gregtech:meta_item_2:32505>, <ore:platePolytetrafluoroethylene>],
   [<ore:gregHardHammers>, <ore:plateTitanium>, <ore:gregWireCutters>]
]);

recipes.addShaped(<adpother:diamond_vacuum_tube>, [
   [<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>],
   [<ore:screwStainlessSteel>, <gregtech:meta_item_1:32672>, <ore:screwStainlessSteel>],
   [<ore:gregHardHammers>, <ore:plateStainlessSteel>, <ore:gregScrewDrivers>]
]);

recipes.addShaped(<adpother:diamond_vacuum_bag>, [
   [<ore:gregHardHammers>, <ore:plateTitanium>, <ore:gregWireCutters>],
   [<ore:platePolytetrafluoroethylene>, <gregtech:meta_item_2:32505>, <ore:platePolytetrafluoroethylene>],
   [null, <ore:platePolytetrafluoroethylene>, null]
]);

recipes.addShaped(<adpother:aerometer>, [
   [<ore:stickSteel>, <gregtech:meta_item_1:32690>, <ore:stickSteel>],
   [<ore:paneGlass>, <ore:circuitBasic>, <ore:paneGlass>],
   [<ore:gregWrenches>, <ore:stickSteel>, <ore:gregFiles>]
]);

recipes.addShaped(<pollutantpump:pump>, [
   [<ore:rotorTin>, <gregtech:meta_item_1:32610>, <ore:rotorTin>],
   [<gregtech:meta_item_1:32610>, <gregtech:machine:501>, <gregtech:meta_item_1:32610>],
   [<ore:pipeMediumBronze>, <gregtech:meta_item_1:32610>, <ore:pipeMediumBronze>]
]);

wiremill.recipeBuilder()
   .inputs([<ore:pipeTinySteel>])
   .outputs(<pollutantpump:pipe> * 4)
   .duration(80)
   .EUt(32)
   .buildAndRegister();

wiremill.recipeBuilder()
   .inputs([<ore:pipeSmallSteel>])
   .outputs(<pollutantpump:pipe> * 8)
   .duration(80)
   .EUt(32)
   .buildAndRegister();

wiremill.recipeBuilder()
   .inputs([<ore:pipeMediumSteel>])
   .outputs(<pollutantpump:pipe> * 16)
   .duration(80)
   .EUt(32)
   .buildAndRegister();

wiremill.recipeBuilder()
   .inputs([<ore:pipeLargeSteel>])
   .outputs(<pollutantpump:pipe> * 32)
   .duration(80)
   .EUt(32)
   .buildAndRegister();