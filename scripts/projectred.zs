import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;

val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");

val illumarArray = [
    <projectred-core:resource_item:500>,
    <projectred-core:resource_item:501>,
    <projectred-core:resource_item:502>,
    <projectred-core:resource_item:503>,
    <projectred-core:resource_item:504>,
    <projectred-core:resource_item:505>,
    <projectred-core:resource_item:506>,
    <projectred-core:resource_item:507>,
    <projectred-core:resource_item:508>,
    <projectred-core:resource_item:509>,
    <projectred-core:resource_item:510>,
    <projectred-core:resource_item:511>,
    <projectred-core:resource_item:512>,
    <projectred-core:resource_item:513>,
    <projectred-core:resource_item:514>,
    <projectred-core:resource_item:515>
] as IItemStack[];

val dyeArray = [
    <ore:dyeWhite>,
    <ore:dyeOrange>,
    <ore:dyeMagenta>,
    <ore:dyeLightBlue>,
    <ore:dyeYellow>,
    <ore:dyeLime>,
    <ore:dyePink>,
    <ore:dyeGray>,
    <ore:dyeLightGray>,
    <ore:dyeCyan>,
    <ore:dyePurple>,
    <ore:dyeBlue>,
    <ore:dyeBrown>,
    <ore:dyeGreen>,
    <ore:dyeRed>,
    <ore:dyeBlack>
] as IOreDictEntry[];


for i in 0 to 15 {
    recipes.remove(illumarArray[i]);

    mixer.recipeBuilder()
    .inputs([<ore:dustGlowstone>, dyeArray[i]])
    .outputs(illumarArray[i] * 2)
    .duration(160)
    .EUt(8)
    .buildAndRegister();
}
