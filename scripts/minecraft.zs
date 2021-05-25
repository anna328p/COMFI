recipes.remove(<item:minecraft:piston>);
recipes.remove(<minecraft:flint_and_steel>);
recipes.remove(<minecraft:minecart>);

recipes.addShapeless(<minecraft:flint_and_steel>, [<ore:stickWroughtIron>, <ore:gemFlint>]);

recipes.addShaped(<item:minecraft:piston>, [
   [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
   [<ore:cobblestone>, <ore:gearSmallIron>, <ore:cobblestone>],
   [<ore:cobblestone>, <ore:plateRedAlloy>, <ore:cobblestone>] 
]);

recipes.addShaped(<minecraft:minecart>, [
   [null, null, null],
   [<ore:plateIron>, <ore:gregHardHammers>, <ore:plateIron>],
   [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
]);
