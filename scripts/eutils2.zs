recipes.remove(<item:extrautils2:trashcan>);
recipes.remove(<item:extrautils2:trashcanfluid>);
recipes.remove(<item:extrautils2:crafter>);

recipes.addShaped(<item:extrautils2:trashcan>, [
   [<ore:gregFiles>, <ore:plateIron>, <ore:gregHardHammers>],
   [<ore:plateIron>, <ore:chestWood>, <ore:plateIron>],
   [null, <ore:plateIron>, null] 
]);

recipes.addShaped(<item:extrautils2:trashcanfluid>, [
   [<ore:gregFiles>, <ore:plateIron>, <ore:gregHardHammers>],
   [<ore:plateIron>, <item:minecraft:bucket>, <ore:plateIron>],
   [null, <ore:plateIron>, null] 
]);

recipes.addShaped(<item:extrautils2:crafter>, [
   [<ore:gregWrenches>, <item:minecraft:crafting_table>, <ore:gregHardHammers>],
   [<ore:gearSmallWroughtIron>, <ore:chestWood>, <ore:gearSmallWroughtIron>],
   [<ore:cobblestone>, <ore:plateRedAlloy>, <ore:cobblestone>] 
]);
