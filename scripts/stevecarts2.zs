import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;

<stevescarts:cartmodule:14>.displayName = "Basic Crop Harvester";
<stevescarts:cartmodule:84>.displayName = "Advanced Crop Harvester";
<stevescarts:cartmodule:79>.displayName = "Refined Wood Cutter";
<stevescarts:cartmodule:80>.displayName = "Advanced Wood Cutter";
<stevescarts:cartmodule:44>.displayName = "Primitive Burner Engine";
<stevescarts:cartmodule>.displayName = "Refined Burner Engine";
<stevescarts:cartmodule:38>.displayName = "Basic Cart Hull";
<stevescarts:cartmodule:39>.displayName = "Refined Cart Hull";
<stevescarts:cartmodule:81>.displayName = "Advanced Cart Hull";
<stevescarts:modulecomponents:1>.displayName = "Basic Wheels";
<stevescarts:modulecomponents:23>.displayName = "Refined Wheels";
<stevescarts:modulecomponents:82>.displayName = "Advanced Wheels";
<stevescarts:modulecomponents:14>.displayName = "Steering Wheel";

recipes.remove(<stevescarts:blockcartassembler>);
recipes.remove(<stevescarts:cartmodule:14>);
recipes.remove(<stevescarts:cartmodule:15>);
mods.jei.JEI.removeAndHide(<stevescarts:cartmodule:37>);
mods.jei.JEI.removeAndHide(<stevescarts:cartmodule:62>);
mods.jei.JEI.removeAndHide(<stevescarts:modulecomponents>);
recipes.remove(<stevescarts:cartmodule:38>);
recipes.remove(<stevescarts:cartmodule:39>);
recipes.remove(<stevescarts:cartmodule:81>);
recipes.remove(<stevescarts:modulecomponents:1>);
recipes.remove(<stevescarts:modulecomponents:23>);
recipes.remove(<stevescarts:modulecomponents:82>);
recipes.remove(<stevescarts:cartmodule:44>);
recipes.remove(<stevescarts:cartmodule>);
recipes.remove(<stevescarts:cartmodule:2>);
recipes.remove(<stevescarts:cartmodule:3>);
recipes.remove(<stevescarts:cartmodule:4>);
recipes.remove(<stevescarts:cartmodule:5>);


recipes.addShaped(<stevescarts:blockcartassembler>, [
    [<ore:plateSteel>, <ore:gregWrenches>, <ore:plateSteel>],
    [<ore:paneGlass>, <extrautils2:crafter>, <ore:paneGlass>],
    [<ore:plateSteel>, <minecraft:furnace>, <ore:plateSteel>]
]);

recipes.addShaped(<stevescarts:cartmodule:14>.withTag({Data: 100 as byte}), [
    [<ore:stickWroughtIron>, <ore:gregFiles>, <ore:stickWroughtIron>],
    [<ore:ringWroughtIron>, <ore:stickWroughtIron>, <ore:ringWroughtIron>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]
]);

recipes.addShaped(<stevescarts:cartmodule:15>.withTag({Data: 100 as byte}), [
    [<ore:gearSmallWroughtIron>, <ore:plateWroughtIron>, <ore:gearSmallWroughtIron>],
    [<ore:stickWroughtIron>, <ore:gregWrenches>, <ore:stickWroughtIron>],
    [<ore:toolHeadSawSteel>, <ore:toolHeadSawSteel>, <ore:toolHeadSawSteel>]
]);

recipes.addShaped(<stevescarts:modulecomponents:1>, [
    [<ore:gregWrenches>, null, <ore:gregFiles>],
    [<ore:ringIron>, <ore:stickIron>, <ore:ringIron>],
    [null, null, null]
]);

recipes.addShaped(<stevescarts:modulecomponents:23>, [
    [<ore:gregWrenches>, null, <ore:gregFiles>],
    [<ore:ringAluminium>, <ore:stickAluminium>, <ore:ringAluminium>],
    [null, null, null]
]);

recipes.addShaped(<stevescarts:modulecomponents:82>, [
    [<ore:gregWrenches>, null, <ore:gregFiles>],
    [<ore:ringTitanium>, <ore:stickTitanium>, <ore:ringTitanium>],
    [null, null, null]
]);

recipes.addShaped(<stevescarts:cartmodule:38>, [
    [<ore:plateIron>, <ore:gregHardHammers>, <ore:plateIron>],
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
    [<stevescarts:modulecomponents:1>, <ore:gregWrenches>, <stevescarts:modulecomponents:1>]
]);

recipes.addShaped(<stevescarts:cartmodule:39>, [
    [<ore:plateAluminium>, <ore:gregHardHammers>, <ore:plateAluminium>],
    [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>],
    [<stevescarts:modulecomponents:23>, <ore:gregWrenches>, <stevescarts:modulecomponents:23>]
]);

recipes.addShaped(<stevescarts:cartmodule:81>, [
    [<ore:plateTitanium>, <ore:gregHardHammers>, <ore:plateTitanium>],
    [<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>],
    [<stevescarts:modulecomponents:82>, <ore:gregWrenches>, <stevescarts:modulecomponents:82>]
]);

recipes.addShaped(<stevescarts:cartmodule:44>, [
    [<ore:plateSteel>, <ore:gregWrenches>, <ore:plateSteel>],
    [<minecraft:piston>, <ore:plateRedAlloy>, <minecraft:piston>],
    [<ore:plateSteel>, <minecraft:furnace>, <ore:plateSteel>]
]);

recipes.addShaped(<stevescarts:cartmodule:2> * 2, [
    [null, null, null],
    [<ore:gregSaws>, <ore:chestWood>, null],
    [null, null, null]
]);

recipes.addShaped(<stevescarts:cartmodule:3> * 2, [
    [null, <ore:gregSaws>, null],
    [null, <ore:chestWood>, null],
    [null, null, null]
]);

recipes.addShaped(<stevescarts:cartmodule:4> * 3, [
    [null, null, null],
    [null, <ore:chestWood>, <ore:gregSaws>],
    [null, null, null]
]);

recipes.addShaped(<stevescarts:cartmodule:5> * 3, [
    [null, null, null],
    [null, <ore:chestWood>, null],
    [null, <ore:gregSaws>, null]
]);