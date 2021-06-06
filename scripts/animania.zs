import mods.hungertweaker.FoodValues;
import mods.gregtech.recipe.RecipeMap;
import mods.jei.JEI;

val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");

<animania:raw_prime_beef>.foodValues.hunger = 2;
<animania:cooked_prime_beef>.foodValues.hunger = 3;
<animania:raw_prime_steak>.foodValues.hunger = 1;
<animania:cooked_prime_steak>.foodValues.hunger = 2;
<animania:raw_prime_pork>.foodValues.hunger = 2;
<animania:cooked_prime_pork>.foodValues.hunger = 3;
<animania:raw_prime_bacon>.foodValues.hunger = 1;
<animania:cooked_prime_bacon>.foodValues.hunger = 2;
<animania:raw_prime_rabbit>.foodValues.hunger = 2;
<animania:cooked_prime_rabbit>.foodValues.hunger = 3;
<animania:raw_prime_mutton>.foodValues.hunger = 2;
<animania:cooked_prime_mutton>.foodValues.hunger = 3;
<animania:cooked_chevon>.foodValues.hunger = 2;
<animania:raw_prime_chevon>.foodValues.hunger = 2;
<animania:cooked_prime_chevon>.foodValues.hunger = 3;
<animania:raw_prime_chicken>.foodValues.hunger = 2;
<animania:cooked_prime_chicken>.foodValues.hunger = 3;
<animania:raw_prime_peacock>.foodValues.hunger = 2;
<animania:cooked_prime_peacock>.foodValues.hunger = 3;
<animania:cooked_horse>.foodValues.hunger = 2;
<animania:goat_cheese_wedge>.foodValues.hunger = 2;
<animania:sheep_cheese_wedge>.foodValues.hunger = 2;
<animania:jersey_cheese_wedge>.foodValues.hunger = 2;
<animania:holstein_cheese_wedge>.foodValues.hunger = 2;
<animania:friesian_cheese_wedge>.foodValues.hunger = 2;
<animania:super_omelette>.foodValues.hunger = 8;
<animania:bacon_omelette>.foodValues.hunger = 4;
<animania:cheese_omelette>.foodValues.hunger = 4;
<animania:truffle_omelette>.foodValues.hunger = 4;
<animania:plain_omelette>.foodValues.hunger = 2;
<animania:truffle_soup>.foodValues.hunger = 4;
<animania:chocolate_truffle>.foodValues.hunger = 4;

recipes.remove(<animania:raw_prime_steak>);
recipes.remove(<animania:raw_prime_bacon>);
recipes.remove(<animania:goat_cheese_wedge>);
recipes.remove(<animania:sheep_cheese_wedge>);
recipes.remove(<animania:jersey_cheese_wedge>);
recipes.remove(<animania:holstein_cheese_wedge>);
recipes.remove(<animania:friesian_cheese_wedge>);
recipes.remove(<animania:block_nest>);
recipes.remove(<animania:block_mud>);
recipes.remove(<animania:block_straw>);
recipes.remove(<animania:cheese_mold>);
recipes.remove(<animania:block_trough>);
recipes.remove(<animania:super_omelette>);
recipes.remove(<animania:bacon_omelette>);
recipes.remove(<animania:cheese_omelette>);
recipes.remove(<animania:truffle_omelette>);
recipes.remove(<animania:plain_omelette>);
recipes.remove(<animania:chocolate_truffle>);
mods.jei.JEI.removeAndHide(<animania:carving_knife>);

recipes.addShapeless(<animania:raw_prime_steak> * 2, [<animania:raw_prime_beef>, <ore:gregKnives>]);
recipes.addShapeless(<animania:raw_prime_bacon> * 2, [<animania:raw_prime_pork>, <ore:gregKnives>]);
recipes.addShapeless(<animania:goat_cheese_wedge> * 4, [<animania:goat_cheese_wheel>, <ore:gregKnives>]);
recipes.addShapeless(<animania:sheep_cheese_wedge> * 4, [<animania:sheep_cheese_wheel>, <ore:gregKnives>]);
recipes.addShapeless(<animania:jersey_cheese_wedge> * 4, [<animania:jersey_cheese_wheel>, <ore:gregKnives>]);
recipes.addShapeless(<animania:holstein_cheese_wedge> * 4, [<animania:holstein_cheese_wheel>, <ore:gregKnives>]);
recipes.addShapeless(<animania:friesian_cheese_wedge> * 4, [<animania:friesian_cheese_wheel>, <ore:gregKnives>]);
recipes.addShapeless(<animania:super_omelette>, [<ore:listAllegg>, <ore:listAllporkcooked>, <ore:foodCheese>, <animania:truffle>, <ore:toolSkillet>]);
recipes.addShapeless(<animania:bacon_omelette>, [<ore:listAllegg>, <ore:listAllporkcooked>, <ore:toolSkillet>]);
recipes.addShapeless(<animania:cheese_omelette>, [<ore:listAllegg>, <ore:foodCheese>, <ore:toolSkillet>]);
recipes.addShapeless(<animania:truffle_omelette>, [<ore:listAllegg>, <animania:truffle>, <ore:toolSkillet>]);
recipes.addShapeless(<animania:plain_omelette>, [<ore:listAllegg>, <ore:toolSkillet>]);
recipes.addShapeless(<animania:chocolate_truffle>, [<harvestcraft:chocolatebaritem>, <animania:truffle>, <ore:listAllsugar>, <ore:toolMixingbowl>]);
recipes.addShapeless(<animania:block_straw>, [<ore:listAllgrain>, <ore:gregKnives>]);

recipes.addShapeless(<animania:block_nest>, [<ore:listAllgrain>, <harvestcraft:wovencottonitem>, <ore:stickWood>]);
recipes.addShapeless(<animania:block_mud> * 2, [<minecraft:water_bucket>, <minecraft:dirt>, <minecraft:dirt>]);

mixer.recipeBuilder()
   .inputs([<minecraft:dirt>])
   .fluidInputs([<fluid:water> * 125])
   .outputs(<animania:block_mud>)
   .duration(80)
   .EUt(8)
   .buildAndRegister();

recipes.addShaped(<animania:block_trough>, [
   [<ore:screwIron>, <ore:plankWood>, <ore:screwIron>],
   [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
   [<ore:stickWood>, <ore:gregScrewDrivers>, <ore:stickWood>]
]);

recipes.addShaped(<animania:block_trough>, [
   [<ore:screwWroughtIron>, <ore:plankWood>, <ore:screwWroughtIron>],
   [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
   [<ore:stickWood>, <ore:gregScrewDrivers>, <ore:stickWood>]
]);

recipes.addShaped(<animania:cheese_mold>, [
   [null, null, null],
   [<ore:plankWood>, <ore:ringIron>, <ore:plankWood>],
   [<ore:gregKnives>, <ore:plankWood>, <ore:gregSoftHammers>]
]);

recipes.addShaped(<animania:cheese_mold>, [
   [null, null, null],
   [<ore:plankWood>, <ore:ringWroughtIron>, <ore:plankWood>],
   [<ore:gregKnives>, <ore:plankWood>, <ore:gregSoftHammers>]
]);