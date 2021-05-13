import mods.gregtech.recipe.RecipeMap;
import mods.jei.JEI;

val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");

furnace.remove(<item:minecraft:coal:1>);
recipes.removeByRecipeName("binniecore:field_kit");
recipes.remove(<forestry:fertilizer_compound>)

recipes.addShaped(<binniecore:field_kit:64>, [
   [null, <ore:gregFiles>, <ore:lensGlass>],
   [null, <ore:stickSteel>, <ore:gregHardHammers>],
   [<ore:stickSteel>, null, null] 
]);

# Fertilizer recipes
mixer.recipeBuilder()
    .inputs([<ore:gemApatite>, <ore:sand>])
    .outputs(<item:forestry:fertilizer_compound> * 2)
    .duration(300)
    .EUt(12)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs([<ore:dustApatite>, <ore:sand>])
    .outputs(<item:forestry:fertilizer_compound> * 2)
    .duration(300)
    .EUt(12)
    .buildAndRegister();