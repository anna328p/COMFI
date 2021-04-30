import mods.gregtech.recipe.RecipeMap;
import mods.jei.JEI;

val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val alloy_smelter = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val forming_press = mods.gregtech.recipe.RecipeMap.getByName("forming_press");
val forge_hammer = mods.gregtech.recipe.RecipeMap.getByName("forge_hammer");
val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val extractor = mods.gregtech.recipe.RecipeMap.getByName("extractor");

recipes.remove(<ore:cableGtSingleRedAlloy>);
recipes.remove(<ore:cableGtSingleTin>);

<gregtech:meta_item_1:32766>.displayName = "Programmable Logic Device";

recipes.addShapeless(<ore:cableGtSingleRedAlloy>.firstItem, [<ore:wireGtSingleRedAlloy>, <ore:plateRubber>]);
recipes.addShapeless(<ore:cableGtSingleTin>.firstItem, [<ore:wireGtSingleTin>, <ore:plateRubber>]);
recipes.addShapeless(<ore:lensGlass>.firstItem, [<gregtech:meta_item_2:32454>, <ore:gregSaws>]);

forming_press.findRecipe(16, [<ore:plateCupronickel>.firstItem, <gregtech:meta_item_1:32304>], null).remove();
macerator.findRecipe(2, [<minecraft:reeds>], null).remove();
compressor.findRecipe(2, [<gregtech:meta_item_1:2325> * 9], null).remove();

# Fertilizer recipe
mixer.recipeBuilder()
    .inputs([<ore:gemApatite>, <ore:sand>])
    .outputs(<item:forestry:fertilizer_compound> * 4)
    .duration(300)
    .EUt(12)
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
    .outputs(<ore:ingotRubber>.firstItem)
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

# i ate man's head
mixer.recipeBuilder()
    .inputs([<ore:dustMeat> * 4])
    .fluidInputs([<liquid:fish_oil> * 80])
    .outputs(<item:contenttweaker:faeast>)
    .duration(320)
    .EUt(32)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs([<item:contenttweaker:faeast> * 4])
    .outputs(<item:contenttweaker:cheetor>)
    .duration(1200)
    .EUt(32)
    .buildAndRegister();

furnace.addRecipe(<item:contenttweaker:rotisserie_cheetor>, <item:contenttweaker:cheetor>, 15);
recipes.addShapeless(<item:contenttweaker:cheetor_cube>, [<item:contenttweaker:cheetor> * 4]);
recipes.addShapeless(<item:contenttweaker:cheetor> * 4, [<item:contenttweaker:cheetor_cube>]);

# custom tooltips
<gregtech:machine:4021>.addTooltip(format.red("Must be used on a space station")); # Stellar Forge
