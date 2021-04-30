furnace.remove(<item:minecraft:coal:1>);
recipes.remove(<item:forestry:fertilizer_compound>);
recipes.remove(<binniecore:field_kit:63>);

recipes.addShaped(<binniecore:field_kit:64>, [
   [null, <ore:gregFiles>, <ore:lensGlass>],
   [null, <ore:stickSteel>, <ore:gregHardHammers>],
   [<ore:stickSteel>, null, null] 
]);


# Temporary until steam mixer recipe map added

recipes.addShapeless(<item:forestry:fertilizer_compound> * 2, [<ore:gemApatite>, <ore:sand>]);