recipes.remove(<item:minecraft:piston>);
recipes.remove(<minecraft:flint_and_steel>);

recipes.addShapeless(<minecraft:flint_and_steel>, [<ore:stickWroughtIron>, <ore:gemFlint>]);

recipes.addShaped(<item:minecraft:piston>, [
   [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
   [<ore:cobblestone>, <ore:gearSmallIron>, <ore:cobblestone>],
   [<ore:cobblestone>, <ore:plateRedAlloy>, <ore:cobblestone>] 
]);
