import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;

recipes.remove(<item:thermaldynamics:duct_16>);
recipes.remove(<item:thermaldynamics:duct_16:1>);
recipes.remove(<item:thermaldynamics:duct_32>);
recipes.remove(<item:thermaldynamics:duct_32:1>);
mods.jei.JEI.removeAndHide(<item:thermaldynamics:servo:0>);
mods.jei.JEI.removeAndHide(<item:thermaldynamics:servo:1>);
recipes.remove(<item:thermaldynamics:servo:2>);
recipes.remove(<item:thermaldynamics:servo:3>);
recipes.remove(<item:thermaldynamics:servo:4>);
mods.jei.JEI.removeAndHide(<item:thermaldynamics:filter:0>);
mods.jei.JEI.removeAndHide(<item:thermaldynamics:filter:1>);
recipes.remove(<item:thermaldynamics:filter:2>);
recipes.remove(<item:thermaldynamics:filter:3>);
recipes.remove(<item:thermaldynamics:filter:4>);
mods.jei.JEI.removeAndHide(<item:thermaldynamics:retriever:0>);
mods.jei.JEI.removeAndHide(<item:thermaldynamics:retriever:1>);
recipes.remove(<item:thermaldynamics:retriever:2>);
recipes.remove(<item:thermaldynamics:retriever:3>);
recipes.remove(<item:thermaldynamics:retriever:4>);
recipes.remove(<item:thermaldynamics:relay>);
recipes.remove(<item:thermaldynamics:duct_48>);

<item:thermaldynamics:servo:2>.displayName = "§rServo";
<item:thermaldynamics:servo:3>.displayName = "§rAdvanced Servo";
<item:thermaldynamics:servo:4>.displayName = "§rElite Servo";

<item:thermaldynamics:filter:2>.displayName = "§rFilter";
<item:thermaldynamics:filter:3>.displayName = "§rAdvanced Filter";
<item:thermaldynamics:filter:4>.displayName = "§rElite Filter";

<item:thermaldynamics:retriever:2>.displayName = "§rRetriever";
<item:thermaldynamics:retriever:3>.displayName = "§rAdvanced Retriever";
<item:thermaldynamics:retriever:4>.displayName = "§rElite Retriever";

recipes.addShapeless(<thermaldynamics:duct_16>, [<item:thermaldynamics:duct_16:1>, <ore:paneGlass>]);

recipes.addShapeless(<item:thermaldynamics:duct_16:1>, [<gregtech:fluid_pipe:1095>]);

recipes.addShapeless(<thermaldynamics:duct_32>, [<item:thermaldynamics:duct_32:1>, <ore:paneGlass>]);

recipes.addShapedMirrored(<item:thermaldynamics:duct_32:1> * 4, [
   [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>],
   [<ore:gregFiles>, null, <ore:gregHardHammers>],
   [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>] 
]);

recipes.addShaped(<item:thermaldynamics:servo:2> * 2, [
    [null, <ore:gregFiles>, null],    
    [<ore:gearSmallIron>, <ore:paneGlass>, <ore:gearSmallIron>],
    [<ore:plateIron>, <item:minecraft:redstone>, <ore:plateIron>]
]);

recipes.addShaped(<item:thermaldynamics:servo:2> * 3, [
    [null, <ore:gregFiles>, null],   
    [<ore:gearSmallWroughtIron>, <ore:paneGlass>, <ore:gearSmallWroughtIron>],
    [<ore:plateWroughtIron>, <item:minecraft:redstone>, <ore:plateWroughtIron>]
]);

recipes.addShaped(<item:thermaldynamics:filter:2> * 2, [
    [null, <ore:gregFiles>, null],    
    [<ore:gearSmallIron>, <ore:paneGlass>, <ore:gearSmallIron>],
    [<ore:plateIron>, <minecraft:paper>, <ore:plateIron>]
]);

recipes.addShaped(<item:thermaldynamics:filter:2> * 3, [
    [null, <ore:gregFiles>, null],   
    [<ore:gearSmallWroughtIron>, <ore:paneGlass>, <ore:gearSmallWroughtIron>],
    [<ore:plateWroughtIron>, <minecraft:paper>, <ore:plateWroughtIron>]
]);

# TO BE CHANGED
recipes.addShaped(<item:thermaldynamics:retriever:2> * 2, [
    [null, <ore:gregFiles>, null],    
    [<ore:gearSmallIron>, <ore:paneGlass>, <ore:gearSmallIron>],
    [<ore:plateIron>, <ore:circuitBasic>, <ore:plateIron>]
]);

# TO BE CHANGED
recipes.addShaped(<item:thermaldynamics:retriever:2> * 3, [
    [null, <ore:gregFiles>, null],   
    [<ore:gearSmallWroughtIron>, <ore:paneGlass>, <ore:gearSmallWroughtIron>],
    [<ore:plateWroughtIron>, <ore:circuitBasic>, <ore:plateWroughtIron>]
]);

recipes.addShaped(<item:thermaldynamics:relay> * 2, [
    [null, null, null],    
    [<ore:gregFiles>, <ore:paneGlass>, <ore:gregWrenches>],
    [<ore:plateRedAlloy>, <item:minecraft:redstone>, <ore:plateRedAlloy>]
]);

recipes.addShapedMirrored(<item:thermaldynamics:duct_48> * 4, [
   [null, <ore:stickWroughtIron>, null],
   [<ore:gregWrenches>, <ore:plateWroughtIron>, <ore:gregHardHammers>],
   [null, <ore:stickWroughtIron>, null] 
]);