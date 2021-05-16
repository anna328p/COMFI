import mods.contenttweaker.Item;
import mods.gregtech.recipe.RecipeMap;

val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
val extractor = mods.gregtech.recipe.RecipeMap.getByName("extractor");

recipes.remove(<travelersbackpack:travelers_backpack:0>);
recipes.remove(<travelersbackpack:backpack_tank>);
recipes.remove(<harvestcraft:hardenedleatheritem>);
recipes.remove(<harvestcraft:saltitem>);
recipes.remove(<harvestcraft:mortarandpestleitem>);
recipes.remove(<harvestcraft:flouritem>);
recipes.remove(<harvestcraft:doughitem>);
recipes.remove(<harvestcraft:beeswaxitem>);
recipes.remove(<harvestcraft:freshwateritem>);

recipes.addShapeless(<harvestcraft:hardenedleatheritem>, [<harvestcraft:beeswaxitem>, <item:minecraft:leather>, <ore:gregSoftHammers>]);

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

compressor.recipeBuilder()
   .inputs([<ore:cropCandleberry> * 4])
   .outputs(<harvestcraft:beeswaxitem>)
   .duration(320)
   .EUt(16)
   .buildAndRegister();

# Flour, dough, bread recipes
recipes.replaceAllOccurences(<harvestcraft:flouritem>, <ore:dustWheat>);
recipes.replaceAllOccurences(<harvestcraft:mortarandpestleitem>, <ore:gregMortars>);

recipes.addShapeless(<harvestcraft:doughitem>, [<harvestcraft:mixingbowlitem>, <ore:dustWheat>, <ore:dustWheat>, <ore:dustWheat>, <harvestcraft:freshwateritem>]);

mixer.recipeBuilder()
   .inputs([<ore:dustWheat> * 2])
   .fluidInputs([<fluid:water> * 125])
   .outputs(<harvestcraft:doughitem>)
   .duration(320)
   .EUt(8)
   .buildAndRegister();

furnace.addRecipe(<minecraft:bread>, <harvestcraft:doughitem>, 15);

# Extract honey from combs
extractor.recipeBuilder()
   .inputs([<ore:beeComb>])
   .outputs(<ore:dropHoney>.firstItem)
   .duration(320)
   .EUt(8)
   .buildAndRegister();

# Animania-related recipes
recipes.replaceAllOccurences(<animania:carving_knife>, <ore:gregKnives>);

# Remove HC cheese recipe
recipes.remove(<harvestcraft:cheeseitem>);

# temp fix until compressor recipe gen fixed
recipes.addShaped(<minecraft:chest>, [
   [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
   [<ore:plankWood>, null, <ore:plankWood>],
   [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
]);