import mods.gregtech.recipe.RecipeMap;
import mods.jei.JEI;

val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
val forming_press = mods.gregtech.recipe.RecipeMap.getByName("forming_press");

recipes.removeByRecipeName("claysoldiers:clay_soldier");

val plain_soldier = <claysoldiers:doll_soldier>.withTag({dollSoldier: {team: "ca383b5d-ddaf-4523-9001-5a5685ef5fba"}});

# clay soldier recipes
mixer.recipeBuilder()
    .inputs([<ore:blockClay>, <minecraft:soul_sand>])
    .outputs(<item:contenttweaker:lively_blend>)
    .duration(320)
    .EUt(8)
    .buildAndRegister();

recipes.addShaped(<item:contenttweaker:form_clay_soldier>, [
    [null, null, <ore:gregKnives>],
    [null, <gregtech:meta_item_2:32011>, null],
    [null, null, null]
]);

recipes.addShapeless(plain_soldier * 2, [<item:contenttweaker:form_clay_soldier>.reuse(), <item:contenttweaker:lively_blend>]);

recipes.addShaped(<item:contenttweaker:mold_clay_soldier>, [
    [<gregtech:meta_item_1:32300>, null, null],
    [null, null, null],
    [null, null, <ore:gregHardHammers>]
]);

forming_press.recipeBuilder()
    .inputs([<item:contenttweaker:mold_clay_soldier>.reuse(), <item:contenttweaker:lively_blend>])
    .outputs(plain_soldier * 4)
    .duration(80)
    .EUt(8)
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
recipes.addShapeless(<item:contenttweaker:cheetor_cube>, [<item:contenttweaker:cheetor>, <item:contenttweaker:cheetor>, <item:contenttweaker:cheetor>, <item:contenttweaker:cheetor>]);
recipes.addShapeless(<item:contenttweaker:cheetor> * 4, [<item:contenttweaker:cheetor_cube>]);

recipes.addShapeless(<contenttweaker:filter_carbon_primitive> * 2, [<harvestcraft:wovencottonitem>, <gregtech:meta_item_2:32570>, <ore:gregSoftHammers>]);
recipes.addShapeless(<contenttweaker:filter_sulfur_primitive> * 2, [<harvestcraft:wovencottonitem>, <ore:wool>, <ore:gregSoftHammers>]);
recipes.addShapeless(<contenttweaker:filter_dust_primitive> * 2, [<harvestcraft:wovencottonitem>, <ore:paper>, <ore:gregSoftHammers>]);