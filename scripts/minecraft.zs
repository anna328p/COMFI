recipes.remove(<item:minecraft:piston>);
recipes.remove(<minecraft:flint_and_steel>);
recipes.remove(<minecraft:minecart>);
recipes.remove(<futuremc:lantern>);

recipes.addShapeless(<minecraft:flint_and_steel>, [<ore:stickWroughtIron>, <ore:gemFlint>]);

recipes.addShaped(<item:minecraft:piston>, [
   [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
   [<ore:cobblestone>, <ore:gearSmallIron>, <ore:cobblestone>],
   [<ore:cobblestone>, <ore:plateRedAlloy>, <ore:cobblestone>] 
]);

recipes.addShaped(<item:minecraft:piston>, [
   [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
   [<ore:cobblestone>, <ore:gearSmallWroughtIron>, <ore:cobblestone>],
   [<ore:cobblestone>, <ore:plateRedAlloy>, <ore:cobblestone>] 
]);

recipes.addShapeless(<minecraft:minecart>, [<stevescarts:cartmodule:38>, <ore:gregWrenches>]);

recipes.addShaped(<minecraft:coal_block>, [
   [<ore:coal>, <ore:coal>, <ore:coal>],
   [<ore:coal>, <ore:coal>, <ore:coal>],
   [<ore:coal>, <ore:coal>, <ore:coal>]
]);

recipes.addShaped(<minecraft:bucket>, [
   [null, null, null],
   [<ore:plateWroughtIron>, <ore:gregHardHammers>, <ore:plateWroughtIron>],
   [null, <ore:plateWroughtIron>, null]
]);

recipes.addShaped(<minecraft:iron_bars> * 10, [
   [null, <ore:gregWrenches>, null],
   [<ore:stickWroughtIron>, <ore:stickWroughtIron>, <ore:stickWroughtIron>],
   [<ore:stickWroughtIron>, <ore:stickWroughtIron>, <ore:stickWroughtIron>]
]);

recipes.addShapeless(<futuremc:lantern>, [<minecraft:iron_bars>, <ore:paneGlass>, <minecraft:torch>, <ore:gregWrenches>]);