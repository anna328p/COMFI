#priority 1000
#loader gregtech

import mods.gregtech.material.MaterialRegistry;

<material:iron>.addFlags(["GENERATE_SMALL_GEAR"]);
<material:wrought_iron>.addFlags(["GENERATE_SMALL_GEAR"]);

var cobaltChromeMaterial = MaterialRegistry.createIngotMaterial(600, "cobalt_chrome", 0xa0ccff, "shiny", 3, [<material:chrome> * 1, <material:cobalt> * 1], 5.5f, 10.0f, 700, 1700);