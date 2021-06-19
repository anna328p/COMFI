import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.PBFRecipeBuilder;
import mods.gtadditions.recipe.Utils;
import mods.jei.JEI;

val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val alloy_smelter = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val forming_press = mods.gregtech.recipe.RecipeMap.getByName("forming_press");
val forge_hammer = mods.gregtech.recipe.RecipeMap.getByName("forge_hammer");
val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val extractor = mods.gregtech.recipe.RecipeMap.getByName("extractor");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val circuit_assembler = mods.gregtech.recipe.RecipeMap.getByName("circuit_assembler");

for recipe in RecipeMaps.getPrimitiveBlastFurnaceRecipes() {
    recipe.remove();
}

recipes.remove(<ore:cableGtSingleRedAlloy>);
recipes.remove(<ore:cableGtSingleTin>);
# field generators
recipes.remove(<gregtech:meta_item_1:32670>);
# crafting station
recipes.remove(<gregtech:machine:825>);
# firebricks
recipes.remove(<gregtech:metal_casing:1>);
# steam pump
recipes.remove(<gregtech:machine:2232>);
# fireclay
recipes.removeByRecipeName("gregtech:fireclay_dust");
# compressed coke clay
recipes.remove(<gtadditions:ga_meta_item:32036>);
recipes.removeByRecipeName("gregtech:small_gear_iron");
recipes.removeByRecipeName("gregtech:small_gear_wrought_iron");
recipes.remove(<ore:toolHeadBuzzSawIron>.firstItem);
recipes.remove(<ore:toolHeadBuzzSawWroughtIron>.firstItem);

# steam multiblocks and hatches
recipes.remove(<gregtech:machine:4197>);
recipes.remove(<gregtech:machine:4178>);
recipes.remove(<gregtech:machine:4177>);
recipes.remove(<gregtech:machine:4176>);

recipes.addShaped(<gregtech:machine:4197>, [
    [<ore:gtMetalCasingBronze>, <ore:gearBronze>, <ore:gtMetalCasingBronze>],
    [<ore:gtMetalCasingBronze>, <gregtech:machine:15>, <ore:gtMetalCasingBronze>],
    [<ore:gtMetalCasingBronze>, <ore:gearBronze>, <ore:gtMetalCasingBronze>]
]);

recipes.addShaped(<gregtech:machine:4178>, [
    [<ore:gtMetalCasingBronze>, <ore:gearBronze>, <ore:gtMetalCasingBronze>],
    [<ore:gtMetalCasingBronze>, <gregtech:machine:9>, <ore:gtMetalCasingBronze>],
    [<ore:gtMetalCasingBronze>, <ore:gearBronze>, <ore:gtMetalCasingBronze>]
]);

recipes.addShaped(<gregtech:machine:4177>, [
    [null, <gregtech:machine_casing:10>, null],
    [null, <ore:chestWood>, null],
    [null, null, null]
]);

recipes.addShaped(<gregtech:machine:4176>, [
    [null, <ore:chestWood>, null],
    [null, <gregtech:machine_casing:10>, null],
    [null, null, null]
]);

recipes.addShaped(<gregtech:meta_item_2:32570>, [
    [<ore:treeSapling>, <ore:treeSapling>, <ore:treeSapling>],
    [<ore:treeSapling>, <ore:gregSoftHammers>, <ore:treeSapling>],
    [<ore:treeSapling>, <ore:treeSapling>, <ore:treeSapling>]
]);

PBFRecipeBuilder.start()
    .input(<ore:ingotIron>)
    .output(<gregtech:meta_item_1:10184>)
    .duration(1500)
    .fuelAmount(4)
    .buildAndRegister();

PBFRecipeBuilder.start()
    .input(<ore:ingotWroughtIron>)
    .output(<gregtech:meta_item_1:10184>)
    .duration(600)
    .fuelAmount(4)
    .buildAndRegister();

recipes.addShapeless(<ore:gearSmallIron>.firstItem, [<ore:gregHardHammers>, <ore:plateIron>]);
recipes.addShapeless(<ore:gearSmallWroughtIron>.firstItem, [<ore:gregHardHammers>, <ore:plateWroughtIron>]);

recipes.addShaped(<ore:toolHeadBuzzSawIron>.firstItem, [
    [null, <ore:plateIron>, <ore:gregFiles>],
    [<ore:plateIron>, null, <ore:plateIron>],
    [<ore:gregHardHammers>, <ore:plateIron>, null]
]);

recipes.addShaped(<ore:toolHeadBuzzSawWroughtIron>.firstItem, [
    [null, <ore:plateWroughtIron>, <ore:gregFiles>],
    [<ore:plateWroughtIron>, null, <ore:plateWroughtIron>],
    [<ore:gregHardHammers>, <ore:plateWroughtIron>, null]
]);

recipes.addShapeless(<ore:cableGtSingleRedAlloy>.firstItem, [<ore:wireGtSingleRedAlloy>, <ore:plateRubber>]);
recipes.addShapeless(<ore:cableGtSingleTin>.firstItem, [<ore:wireGtSingleTin>, <ore:plateRubber>]);
recipes.addShapeless(<ore:lensGlass>.firstItem, [<gregtech:meta_item_2:32454>, <ore:gregSaws>]);

recipes.addShaped(<gregtech:machine:825>, [
   [null, <item:minecraft:crafting_table>, null],
   [<ore:plateBronze>, <ore:chestWood>, <ore:plateBronze>],
   [<ore:gregWrenches>, <ore:plateBronze>, <ore:gregHardHammers>] 
]);

forming_press.findRecipe(16, [<ore:plateCupronickel>.firstItem, <gregtech:meta_item_1:32304>], null).remove();
macerator.findRecipe(2, [<minecraft:reeds>], null).remove();
compressor.findRecipe(2, [<gregtech:meta_item_1:2325> * 9], null).remove();

Utils.removeRecipeByOutput(circuit_assembler, [<gtadditions:ga_meta_item:32579>], [], true);
Utils.removeRecipeByOutput(assembler, [<gregtech:meta_item_1:32670>], [], true);

# Fireclay recipe
mixer.recipeBuilder()
    .inputs([<ore:dustBrick>, <ore:dustClay>])
    .outputs(<ore:dustFireclay>.firstItem * 2)
    .duration(50)
    .EUt(8)
    .buildAndRegister();

# Red alloy dust recipes
mixer.recipeBuilder()
    .inputs([<ore:dustCopper>, <ore:dustRedstone> * 3])
    .outputs(<ore:dustRedAlloy>.firstItem)
    .duration(100)
    .EUt(8)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs([<ore:dustAnnealedCopper>, <ore:dustRedstone> * 3])
    .outputs(<ore:dustRedAlloy>.firstItem)
    .duration(100)
    .EUt(8)
    .buildAndRegister();

# Coke brick recipe
alloy_smelter.recipeBuilder()
    .inputs([<item:minecraft:clay_ball>, <ore:sand>])
    .outputs(<gregtech:meta_item_2:32016> * 2)
    .duration(160)
    .EUt(16)
    .buildAndRegister();

# Coke brick recipe
alloy_smelter.recipeBuilder()
    .inputs([<item:minecraft:clay_ball>, <ore:sand>])
    .outputs(<gregtech:meta_item_2:32016> * 2)
    .duration(160)
    .EUt(16)
    .buildAndRegister();

# Steam-age rubber recipes
alloy_smelter.recipeBuilder()
    .inputs([<ore:dustRawRubber> * 3, <ore:dustSulfur>])
    .outputs(<ore:ingotRubber>.firstItem * 3)
    .duration(300)
    .EUt(16)
    .buildAndRegister();

alloy_smelter.recipeBuilder()
    .inputs([<ore:ingotRubber> * 2, <gregtech:meta_item_1:32301>.reuse()])
    .outputs(<ore:plateRubber>.firstItem)
    .duration(40)
    .EUt(16)
    .buildAndRegister();

forge_hammer.recipeBuilder()
    .inputs([<ore:ingotRubber> * 3])
    .outputs(<ore:plateRubber>.firstItem * 2)
    .duration(100)
    .EUt(16)
    .buildAndRegister();

# Sugarcane recipes
extractor.recipeBuilder()
    .inputs([<minecraft:reeds>])
    .outputs(<minecraft:sugar>)
    .duration(160)
    .EUt(5)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs([<minecraft:reeds>])
    .outputs(<gregtech:meta_item_1:2325>)
    .duration(320)
    .EUt(2)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs([<gregtech:meta_item_1:2325>])
    .outputs(<minecraft:paper>)
    .duration(320)
    .EUt(2)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs([<minecraft:paper> * 9])
    .outputs(<ore:blockPaper>.firstItem)
    .duration(320)
    .EUt(2)
    .buildAndRegister();

# compressed coke clay
recipes.addShaped(<gtadditions:ga_meta_item:32036> * 4, [
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<ore:sand>, <ore:formWood>.reuse(), <ore:sand>],
    [<ore:sand>, <ore:sand>, <ore:sand>]
]);

recipes.addShaped(<gregtech:machine:2232>, [
    [<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>],
    [<ore:pipeMediumBronze>, <ore:gregWrenches>, <ore:pipeMediumBronze>],
    [<ore:plateBronze>, <ore:rotorBronze>, <ore:plateBronze>]
]);

recipes.addShaped(<gregtech:metal_casing:1> * 2, [
    [<gregtech:meta_item_2:32015>, <gregtech:meta_item_2:32015>, <gregtech:meta_item_2:32015>],
    [<gregtech:meta_item_2:32015>, <forge:bucketfilled>.withTag({FluidName: "concrete", Amount: 1000}), <gregtech:meta_item_2:32015>],
    [<gregtech:meta_item_2:32015>, <gregtech:meta_item_2:32015>, <gregtech:meta_item_2:32015>]
]);

# LEDs & displays
assembler.recipeBuilder()
    .inputs([<gregtech:meta_item_2:32451> * 8, <ore:wireFineAluminium> * 4, <ore:dustGlass>, <ore:dyeRed>, <ore:dyeGreen>, <ore:dyeBlue>])
    .fluidInputs(<fluid:soldering_alloy> * 72)
    .outputs(<gtadditions:ga_meta_item:32578> * 4)
    .duration(400)
    .EUt(64)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<gregtech:meta_item_2:32451> * 8, <ore:wireFineAluminium> * 4, <ore:dustGlass>, <ore:dyeRed>, <ore:dyeGreen>, <ore:dyeBlue>])
    .fluidInputs(<fluid:tin> * 144)
    .outputs(<gtadditions:ga_meta_item:32578> * 4)
    .duration(400)
    .EUt(64)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<gregtech:meta_item_2:32451> * 8, <ore:wireFineAluminium> * 4, <ore:dustGlass>, <ore:dyeRed>, <ore:dyeGreen>, <ore:dyeBlue>])
    .fluidInputs(<fluid:lead> * 288)
    .outputs(<gtadditions:ga_meta_item:32578> * 4)
    .duration(400)
    .EUt(64)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<gtadditions:ga_meta_item:32578> * 4, <ore:wireFineAluminium> * 4, <gregtech:meta_item_2:32448>])
    .fluidInputs(<fluid:soldering_alloy> * 72)
    .outputs(<gtadditions:ga_meta_item:32579>)
    .duration(400)
    .EUt(64)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<gtadditions:ga_meta_item:32578> * 4, <ore:wireFineAluminium> * 4, <gregtech:meta_item_2:32448>])
    .fluidInputs(<fluid:tin> * 144)
    .outputs(<gtadditions:ga_meta_item:32579>)
    .duration(400)
    .EUt(64)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<gtadditions:ga_meta_item:32578> * 4, <ore:wireFineAluminium> * 4, <gregtech:meta_item_2:32448>])
    .fluidInputs(<fluid:lead> * 288)
    .outputs(<gtadditions:ga_meta_item:32579>)
    .duration(400)
    .EUt(64)
    .buildAndRegister();

# field generators
assembler.recipeBuilder()
    .inputs([<ore:circuitBasic> * 2, <ore:enderpearl> * 2, <gregtech:meta_item_2:32456> * 4])
    .outputs(<gregtech:meta_item_1:32670>)
    .duration(320)
    .EUt(30)
    .buildAndRegister();

# custom tooltips
// <gregtech:machine:4021>.addTooltip(format.red("Must be used on a space station"));
