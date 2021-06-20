import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import mods.gtadditions.recipe.GARecipeMaps;
import mods.jei.JEI;

val circuit_assembler = mods.gregtech.recipe.RecipeMap.getByName("circuit_assembler");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val polarizer = mods.gregtech.recipe.RecipeMap.getByName("polarizer");
val crystallography_chamber = GARecipeMaps.CRYSTALLOGRAPHY_CHAMBER_RECIPES;

recipes.removeByMod("appliedenergistics2");
mods.jei.JEI.removeAndHide(<appliedenergistics2:material>);
<appliedenergistics2:material:1>.displayName = "Charged Certus Quartz";

val fluixMaterialsCrystalline = [
    <ore:gemQuartz>.firstItem,
    <ore:gemQuartzite>.firstItem,
    <ore:gemEmerald>.firstItem,
    <ore:gemRutile>.firstItem,
    <gregtech:meta_item_2:32502>
] as IItemStack[];

val fluixMaterialsResonant = [
    <ore:dustGlowstone>.firstItem,
    <ore:dustRedstone>.firstItem,
    <ore:dustEnderPearl>.firstItem,
    <gregtech:meta_item_2:32572>,
    <ore:dustMagnetoResonatic>.firstItem
] as IItemStack[];

val fluixMaterialsResonantTiers = {
    <ore:dustGlowstone>.firstItem : "1",
    <ore:dustRedstone>.firstItem : "1",
    <ore:dustEnderPearl>.firstItem : "2",
    <gregtech:meta_item_2:32572> : "3",
    <ore:dustMagnetoResonatic>.firstItem : "4"
} as string[IItemStack];

val fluixMaterialsCrystallineTiers = {
    <ore:gemQuartz>.firstItem : "1",
    <ore:gemQuartzite>.firstItem : "1",
    <ore:gemEmerald>.firstItem : "2",
    <ore:gemRutile>.firstItem : "3",
    <gregtech:meta_item_2:32502> : "4"
} as string[IItemStack];

recipes.addShaped(<gregtech:machine:5000>, [
    [<ore:circuitBasic>, <ore:plateLead>, <ore:circuitBasic>],
    [<gregtech:meta_item_1:32600>, <gregtech:machine:190>, <gregtech:meta_item_1:32600>],
    [<ore:circuitBasic>, <ore:plateLead>, <ore:circuitBasic>]
]);

for r in fluixMaterialsResonant {
    for c in fluixMaterialsCrystalline {
        var recipeTier = 1;
        val resonantTier = fluixMaterialsResonantTiers[r] as int;
        val crystallineTier = fluixMaterialsCrystallineTiers[c] as int;
        
        if (resonantTier >= crystallineTier) {
            recipeTier = resonantTier;
        } else {
            recipeTier = crystallineTier;
        }

        val recipeEUt = 120 * pow(4, recipeTier - 1);
        val fluixOutput = <ore:crystalFluix>.firstItem * (resonantTier + crystallineTier);
        
        crystallography_chamber.recipeBuilder()
            .inputs([<appliedenergistics2:material:1>, r, c])
            .fluidInputs(<fluid:water> * 1000)
            .outputs(fluixOutput)
            .duration(600)
            .EUt(recipeEUt)
            .buildAndRegister();
    }
}

macerator.recipeBuilder()
    .inputs([<ore:crystalFluix>])
    .outputs(<ore:dustFluix>.firstItem)
    .duration(100)
    .EUt(12)
    .buildAndRegister();

polarizer.recipeBuilder()
    .inputs([<ore:crystalCertusQuartz>])
    .outputs(<appliedenergistics2:material:1>)
    .duration(300)
    .EUt(30)
    .buildAndRegister();