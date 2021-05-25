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
recipes.remove(<harvestcraft:icecreamitem>);
recipes.remove(<fluidfunnel:funnel>);
mods.jei.JEI.removeAndHide(<fluidfunnel:tank>);
mods.jei.JEI.removeAndHide(<fluidfunnel:tap>);
recipes.removeByRecipeName("quark:hopper");

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

recipes.addShapeless(<harvestcraft:hardenedleatheritem>, [<harvestcraft:beeswaxitem>, <item:minecraft:leather>, <ore:gregSoftHammers>]);

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
recipes.replaceAllOccurences(<harvestcraft:flouritem>, <ore:dustWheat>);
recipes.replaceAllOccurences(<harvestcraft:mortarandpestleitem>, <ore:gregMortars>);

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

# Animania-related recipes
recipes.replaceAllOccurences(<animania:carving_knife>, <ore:gregKnives>);

# Remove HC cheese recipe
recipes.remove(<harvestcraft:cheeseitem>);

recipes.addShapeless(<ore:seedWheat>.firstItem, [<minecraft:wheat>, <ore:gregKnives>]);

furnace.addRecipe(<minecraft:brick>, <minecraft:clay_ball>, 15);