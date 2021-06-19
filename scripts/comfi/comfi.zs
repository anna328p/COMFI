import mods.gregtech.recipe.RecipeMap;
import mods.jei.JEI;

val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
val forming_press = mods.gregtech.recipe.RecipeMap.getByName("forming_press");
val laser_engraver = mods.gregtech.recipe.RecipeMap.getByName("laser_engraver");
val cutting_machine = mods.gregtech.recipe.RecipeMap.getByName("cutting_saw");
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");

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

# gpu wafer
recipes.addShaped(<item:contenttweaker:lens_quartzite>, [
    [<minecraft:flint>, <ore:gregFiles>, <minecraft:flint>],
    [<minecraft:flint>, <ore:gemQuartzite>, <minecraft:flint>],
    [<minecraft:flint>, <minecraft:diamond>, <minecraft:flint>]
]);

laser_engraver.recipeBuilder()
    .inputs([<gregtech:meta_item_2:32440>, <item:contenttweaker:lens_quartzite>.reuse()])
    .outputs(<item:contenttweaker:gpu_wafer>)
    .duration(1800)
    .EUt(120)
    .buildAndRegister();

laser_engraver.recipeBuilder()
    .inputs([<gregtech:meta_item_2:32441>, <item:contenttweaker:lens_quartzite>.reuse()])
    .outputs(<item:contenttweaker:gpu_wafer> * 4)
    .duration(1000)
    .EUt(480)
    .buildAndRegister();

laser_engraver.recipeBuilder()
    .inputs([<gregtech:meta_item_2:32442>, <item:contenttweaker:lens_quartzite>.reuse()])
    .outputs(<item:contenttweaker:gpu_wafer> * 8)
    .duration(400)
    .EUt(1920)
    .buildAndRegister();

cutting_machine.recipeBuilder()
    .inputs([<item:contenttweaker:gpu_wafer>])
    .outputs(<item:contenttweaker:gpu_die> * 4)
    .duration(600)
    .EUt(48)
    .buildAndRegister();

# fluix wafers
blast_furnace.recipeBuilder()
    .inputs([<ore:dustFluix> * 32])
    .fluidInputs([<fluid:nitrogen> * 8000])
    .outputs(<item:contenttweaker:fluix_boule>)
    .property("temperature", 1784)
    .duration(12000)
    .EUt(120)
    .buildAndRegister();

cutting_machine.recipeBuilder()
    .inputs([<item:contenttweaker:fluix_boule>])
    .outputs(<item:contenttweaker:fluix_wafer> * 16)
    .duration(600)
    .EUt(64)
    .buildAndRegister();

laser_engraver.recipeBuilder()
    .inputs([<item:contenttweaker:fluix_wafer>, <ore:lensGlass>.reuse()])
    .outputs(<item:contenttweaker:fluix_processor_wafer>)
    .duration(900)
    .EUt(120)
    .buildAndRegister();

laser_engraver.recipeBuilder()
    .inputs([<item:contenttweaker:fluix_wafer>, <contenttweaker:lens_quartzite>.reuse()])
    .outputs(<item:contenttweaker:fluix_memory_wafer>)
    .duration(900)
    .EUt(120)
    .buildAndRegister();

cutting_machine.recipeBuilder()
    .inputs([<item:contenttweaker:fluix_processor_wafer>])
    .outputs(<item:contenttweaker:fluix_processor_die> * 4)
    .duration(600)
    .EUt(48)
    .buildAndRegister();

cutting_machine.recipeBuilder()
    .inputs([<item:contenttweaker:fluix_memory_wafer>])
    .outputs(<item:contenttweaker:fluix_memory_die> * 16)
    .duration(600)
    .EUt(48)
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