import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val circuit_assembler = mods.gregtech.recipe.RecipeMap.getByName("circuit_assembler");

val name_removals = [
    "opencomputers:printer18",
    "opencomputers:adapter0",
    "opencomputers:assembler1",
    "opencomputers:cable2",
    "opencomputers:cable2",
    "opencomputers:capacitor3",
    "opencomputers:charger8",
    "opencomputers:case14",
    "opencomputers:case26",
    "opencomputers:case35",
    "opencomputers:disassembler9",
    "opencomputers:diskdrive10",
    "opencomputers:material50",
    "opencomputers:material51",
    "opencomputers:geolyzer11",
    "opencomputers:hologram112",
    "opencomputers:powerconverter16",
    "opencomputers:netsplitter28",
    "opencomputers:powerdistributor17",
    "opencomputers:raid19",
    "opencomputers:redstone20",
    "opencomputers:relay21",
    "opencomputers:screen122",
    "opencomputers:screen224",
    "opencomputers:screen323",
    "opencomputers:rack25",
    "opencomputers:waypoint26",
    "opencomputers:transposer29",
    "opencomputers:material39",
    "opencomputers:material34",
    "opencomputers:material40",
    "opencomputers:material41",
    "opencomputers:material42",
    "opencomputers:material48",
    "opencomputers:material49",
    "opencomputers:material36",
    "opencomputers:material37",
    "opencomputers:material38",
    "opencomputers:material33",
    "opencomputers:material46",
    "opencomputers:material47",
    "opencomputers:material35",
    "opencomputers:component77",
    "opencomputers:component78",
    "opencomputers:tool55",
    "opencomputers:component62",
    "opencomputers:component63",
    "opencomputers:component64",
    "opencomputers:component65",
    "opencomputers:component66",
    "opencomputers:component67",
    "opencomputers:card90",
    "opencomputers:card91",
    "opencomputers:card92",
    "opencomputers:component80",
    "opencomputers:storage125",
    "opencomputers:card81",
    "opencomputers:card82",
    "opencomputers:card83",
    "opencomputers:storage127",
    "opencomputers:storage128",
    "opencomputers:storage129",
    "opencomputers:card88",
    "opencomputers:card89",
    "opencomputers:component68",
    "opencomputers:component69",
    "opencomputers:component70",
    "opencomputers:component71",
    "opencomputers:component72",
    "opencomputers:component73",
    "opencomputers:card86",
    "opencomputers:card84",
    "opencomputers:card85",
    "opencomputers:tool56",
    "opencomputers:wrench59",
    "opencomputers:component74",
    "opencomputers:component75",
    "opencomputers:component76",
    "opencomputers:component79",
    "opencomputers:upgrade124",
    "opencomputers:card87",
    "opencomputers:hologram213",
    "opencomputers:motionsensor15",
    "opencomputers:motionsensor15",
    "opencomputers:upgrade93",
    "opencomputers:upgrade94",
    "opencomputers:upgrade95",
    "opencomputers:upgrade96",
    "opencomputers:upgrade97",
    "opencomputers:upgrade98",
    "opencomputers:upgrade99",
    "opencomputers:upgrade100",
    "opencomputers:upgrade101",
    "opencomputers:upgrade102",
    "opencomputers:upgrade103",
    "opencomputers:upgrade104",
    "opencomputers:upgrade105",
    "opencomputers:upgrade106",
    "opencomputers:upgrade107",
    "opencomputers:upgrade108",
    "opencomputers:upgrade109",
    "opencomputers:upgrade120",
    "opencomputers:upgrade121",
    "opencomputers:upgrade110",
    "opencomputers:upgrade111",
    "opencomputers:upgrade119",
    "opencomputers:upgrade123",
    "opencomputers:upgrade113",
    "opencomputers:upgrade114",
    "opencomputers:upgrade115",
    "opencomputers:upgrade116",
    "opencomputers:upgrade117",
    "opencomputers:upgrade118",
    "opencomputers:upgrade122",
    "opencomputers:storage126",
    "opencomputers:storage130",
    "opencomputers:hoverboots60"
] as string[];

for item in name_removals {
	recipes.removeByRecipeName(item);
}

val boardGoodPlastic = <gtadditions:ga_meta_item:32031>;
val dieCPU = <gregtech:meta_item_2:32478>;
val dieGPU = <contenttweaker:gpu_die>;
val dieIC = <gregtech:meta_item_2:32477>;
val dieRAM = <gregtech:meta_item_2:32485>;
val circuitMV = <ore:circuitGood>;
val circuitHV = <ore:circuitAdvanced>;
val circuitEV = <ore:circuitExtreme>;
val resistorAnalog = <gregtech:meta_item_2:32452>;
val resistorRefined = <gtadditions:ga_meta_item:32242>;
val capacitorAnalog = <gregtech:meta_item_2:32455>;
val capacitorRefined = <gtadditions:ga_meta_item:32241>;
val eeprom = <opencomputers:storage> as IItemStack;
val eepromLuaBios = <opencomputers:storage>.withTag({"oc:data": {"oc:readonly": 0 as byte, "oc:eeprom": [108, 111, 99, 97, 108, 32, 105, 110, 105, 116, 10, 100, 111, 10, 32, 32, 108, 111, 99, 97, 108, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 95, 105, 110, 118, 111, 107, 101, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 105, 110, 118, 111, 107, 101, 10, 32, 32, 108, 111, 99, 97, 108, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 109, 101, 116, 104, 111, 100, 44, 32, 46, 46, 46, 41, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 114, 101, 115, 117, 108, 116, 32, 61, 32, 116, 97, 98, 108, 101, 46, 112, 97, 99, 107, 40, 112, 99, 97, 108, 108, 40, 99, 111, 109, 112, 111, 110, 101, 110, 116, 95, 105, 110, 118, 111, 107, 101, 44, 32, 97, 100, 100, 114, 101, 115, 115, 44, 32, 109, 101, 116, 104, 111, 100, 44, 32, 46, 46, 46, 41, 41, 10, 32, 32, 32, 32, 105, 102, 32, 110, 111, 116, 32, 114, 101, 115, 117, 108, 116, 91, 49, 93, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 110, 105, 108, 44, 32, 114, 101, 115, 117, 108, 116, 91, 50, 93, 10, 32, 32, 32, 32, 101, 108, 115, 101, 10, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 116, 97, 98, 108, 101, 46, 117, 110, 112, 97, 99, 107, 40, 114, 101, 115, 117, 108, 116, 44, 32, 50, 44, 32, 114, 101, 115, 117, 108, 116, 46, 110, 41, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 101, 110, 100, 10, 10, 32, 32, 45, 45, 32, 98, 97, 99, 107, 119, 97, 114, 100, 115, 32, 99, 111, 109, 112, 97, 116, 105, 98, 105, 108, 105, 116, 121, 44, 32, 109, 97, 121, 32, 114, 101, 109, 111, 118, 101, 32, 108, 97, 116, 101, 114, 10, 32, 32, 108, 111, 99, 97, 108, 32, 101, 101, 112, 114, 111, 109, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 101, 101, 112, 114, 111, 109, 34, 41, 40, 41, 10, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 103, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 32, 61, 32, 102, 117, 110, 99, 116, 105, 111, 110, 40, 41, 10, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 101, 101, 112, 114, 111, 109, 44, 32, 34, 103, 101, 116, 68, 97, 116, 97, 34, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 115, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 32, 61, 32, 102, 117, 110, 99, 116, 105, 111, 110, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 101, 101, 112, 114, 111, 109, 44, 32, 34, 115, 101, 116, 68, 97, 116, 97, 34, 44, 32, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 101, 110, 100, 10, 10, 32, 32, 100, 111, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 115, 99, 114, 101, 101, 110, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 115, 99, 114, 101, 101, 110, 34, 41, 40, 41, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 103, 112, 117, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 103, 112, 117, 34, 41, 40, 41, 10, 32, 32, 32, 32, 105, 102, 32, 103, 112, 117, 32, 97, 110, 100, 32, 115, 99, 114, 101, 101, 110, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 103, 112, 117, 44, 32, 34, 98, 105, 110, 100, 34, 44, 32, 115, 99, 114, 101, 101, 110, 41, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 101, 110, 100, 10, 32, 32, 108, 111, 99, 97, 108, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 116, 114, 121, 76, 111, 97, 100, 70, 114, 111, 109, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 104, 97, 110, 100, 108, 101, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 34, 111, 112, 101, 110, 34, 44, 32, 34, 47, 105, 110, 105, 116, 46, 108, 117, 97, 34, 41, 10, 32, 32, 32, 32, 105, 102, 32, 110, 111, 116, 32, 104, 97, 110, 100, 108, 101, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 110, 105, 108, 44, 32, 114, 101, 97, 115, 111, 110, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 98, 117, 102, 102, 101, 114, 32, 61, 32, 34, 34, 10, 32, 32, 32, 32, 114, 101, 112, 101, 97, 116, 10, 32, 32, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 100, 97, 116, 97, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 34, 114, 101, 97, 100, 34, 44, 32, 104, 97, 110, 100, 108, 101, 44, 32, 109, 97, 116, 104, 46, 104, 117, 103, 101, 41, 10, 32, 32, 32, 32, 32, 32, 105, 102, 32, 110, 111, 116, 32, 100, 97, 116, 97, 32, 97, 110, 100, 32, 114, 101, 97, 115, 111, 110, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 110, 105, 108, 44, 32, 114, 101, 97, 115, 111, 110, 10, 32, 32, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 32, 32, 32, 32, 98, 117, 102, 102, 101, 114, 32, 61, 32, 98, 117, 102, 102, 101, 114, 32, 46, 46, 32, 40, 100, 97, 116, 97, 32, 111, 114, 32, 34, 34, 41, 10, 32, 32, 32, 32, 117, 110, 116, 105, 108, 32, 110, 111, 116, 32, 100, 97, 116, 97, 10, 32, 32, 32, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 34, 99, 108, 111, 115, 101, 34, 44, 32, 104, 97, 110, 100, 108, 101, 41, 10, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 108, 111, 97, 100, 40, 98, 117, 102, 102, 101, 114, 44, 32, 34, 61, 105, 110, 105, 116, 34, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 108, 111, 99, 97, 108, 32, 114, 101, 97, 115, 111, 110, 10, 32, 32, 105, 102, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 103, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 41, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 105, 110, 105, 116, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 116, 114, 121, 76, 111, 97, 100, 70, 114, 111, 109, 40, 99, 111, 109, 112, 117, 116, 101, 114, 46, 103, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 41, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 105, 102, 32, 110, 111, 116, 32, 105, 110, 105, 116, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 115, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 41, 10, 32, 32, 32, 32, 102, 111, 114, 32, 97, 100, 100, 114, 101, 115, 115, 32, 105, 110, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 102, 105, 108, 101, 115, 121, 115, 116, 101, 109, 34, 41, 32, 100, 111, 10, 32, 32, 32, 32, 32, 32, 105, 110, 105, 116, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 116, 114, 121, 76, 111, 97, 100, 70, 114, 111, 109, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 32, 32, 105, 102, 32, 105, 110, 105, 116, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 115, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 98, 114, 101, 97, 107, 10, 32, 32, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 101, 110, 100, 10, 32, 32, 105, 102, 32, 110, 111, 116, 32, 105, 110, 105, 116, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 101, 114, 114, 111, 114, 40, 34, 110, 111, 32, 98, 111, 111, 116, 97, 98, 108, 101, 32, 109, 101, 100, 105, 117, 109, 32, 102, 111, 117, 110, 100, 34, 32, 46, 46, 32, 40, 114, 101, 97, 115, 111, 110, 32, 97, 110, 100, 32, 40, 34, 58, 32, 34, 32, 46, 46, 32, 116, 111, 115, 116, 114, 105, 110, 103, 40, 114, 101, 97, 115, 111, 110, 41, 41, 32, 111, 114, 32, 34, 34, 41, 44, 32, 48, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 98, 101, 101, 112, 40, 49, 48, 48, 48, 44, 32, 48, 46, 50, 41, 10, 101, 110, 100, 10, 105, 110, 105, 116, 40, 41, 10] as byte[] as byte[], "oc:label": "EEPROM (Lua BIOS)"}});

function generate_circuit_assembler_recipes (recipeMap as RecipeMap, iteminputs as IIngredient[], output as IItemStack, duration as int, eut as int, circuit as int) {
    recipeMap.recipeBuilder()
        .inputs(iteminputs)
        .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: circuit}))
        .fluidInputs(<fluid:soldering_alloy> * 72)
        .outputs(output)
        .duration(duration)
        .EUt(eut)
        .buildAndRegister();

    recipeMap.recipeBuilder()
        .inputs(iteminputs)
        .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: circuit}))
        .fluidInputs(<fluid:tin> * 144)
        .outputs(output)
        .duration(duration)
        .EUt(eut)
        .buildAndRegister();   

    recipeMap.recipeBuilder()
        .inputs(iteminputs)
        .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: circuit}))
        .fluidInputs(<fluid:lead> * 288)
        .outputs(output)
        .duration(duration)
        .EUt(eut)
        .buildAndRegister();
}

/* 
    common components & devices
*/

# disk platters
assembler.recipeBuilder()
    .inputs([<ore:plateAluminium>, <ore:dustCobaltChrome>, <ore:foilPlastic> * 2])
    .outputs(<opencomputers:material:12> as IItemStack)
    .duration(200)
    .EUt(48)
    .buildAndRegister();

# eeprom
val eepromInputs = [dieIC * 2, boardGoodPlastic, <ore:wireFineGold> * 8] as IIngredient[];
generate_circuit_assembler_recipes(circuit_assembler, eepromInputs, eeprom, 400, 30, 1);

recipes.addShapeless(eepromLuaBios, [<ore:oc:eeprom>, <ore:gregScrewDrivers>]);

# floppy disks
assembler.recipeBuilder()
    .inputs([<ore:paper> * 2, <opencomputers:material:12>, <ore:plateSteel>, <ore:boltSteel>])
    .outputs(<opencomputers:storage:1> as IItemStack)
    .duration(600)
    .EUt(30)
    .buildAndRegister();

# disk drives
val diskDriveInputs = [<gregtech:machine:502>, dieIC * 2, boardGoodPlastic, <ore:wireFineTinAlloy> * 8] as IIngredient[];
generate_circuit_assembler_recipes(circuit_assembler, diskDriveInputs, <opencomputers:diskdrive> as IItemStack, 600, 30, 0);

/* 
    tier 1 computer components
*/

# case
val case1InputsAnalog = [<gregtech:machine:502>, dieIC * 2, boardGoodPlastic, resistorAnalog * 8, capacitorAnalog * 4] as IIngredient[];
val case1InputsRefined = [<gregtech:machine:502>, dieIC * 2, boardGoodPlastic, resistorRefined * 4, capacitorRefined * 2] as IIngredient[];
generate_circuit_assembler_recipes(circuit_assembler, case1InputsAnalog, <opencomputers:case1> as IItemStack, 900, 30, 0);
generate_circuit_assembler_recipes(circuit_assembler, case1InputsRefined, <opencomputers:case1> as IItemStack, 900, 30, 0);

# CPU
val cpu1Inputs = [dieCPU * 4, boardGoodPlastic, <ore:wireFineTinAlloy> * 16] as IIngredient[];
generate_circuit_assembler_recipes(circuit_assembler, cpu1Inputs, <opencomputers:component> as IItemStack, 600, 30, 0);

# RAM
val ram1Inputs = [dieRAM * 8, dieIC * 2, boardGoodPlastic, <ore:wireFineTinAlloy> * 16, <ore:wireFineGold> * 8] as IIngredient[];
val ram1_5Inputs = [dieRAM * 12, dieIC * 4, boardGoodPlastic, <ore:wireFineTinAlloy> * 24, <ore:wireFineGold> * 8] as IIngredient[];
generate_circuit_assembler_recipes(circuit_assembler, ram1Inputs, <opencomputers:component:6> as IItemStack, 400, 30, 0);
generate_circuit_assembler_recipes(circuit_assembler, ram1_5Inputs, <opencomputers:component:7> as IItemStack, 600, 30, 0);

# HDD
val hdd1Inputs = [dieIC * 2, boardGoodPlastic, <opencomputers:material:12> * 2, <ore:plateSteel> * 2, <ore:boltSteel>] as IIngredient[];
generate_circuit_assembler_recipes(circuit_assembler, hdd1Inputs, <opencomputers:storage:2> as IItemStack, 600, 30, 0);

# screen
val screen1Inputs = [<gregtech:frame_aluminium>, dieIC * 2, boardGoodPlastic, <ore:wireFineTinAlloy> * 8, <gtadditions:ga_meta_item:32579>] as IIngredient[];
generate_circuit_assembler_recipes(circuit_assembler, screen1Inputs, <opencomputers:screen1> as IItemStack, 400, 30, 0);

/* 
    cards
*/

# GPUs
val cardGraphics1Inputs = [dieGPU * 2, boardGoodPlastic, <ore:wireFineTinAlloy> * 16, <ore:wireFineGold> * 8, <ore:plateSteel>] as IIngredient[];
generate_circuit_assembler_recipes(circuit_assembler, cardGraphics1Inputs, <opencomputers:card:1> as IItemStack, 900, 30, 0);

# redstone cards
val cardRedstone1Inputs = [dieIC * 2, boardGoodPlastic, <ore:wireFineRedAlloy> * 8, <ore:wireFineGold> * 8, <ore:plateSteel>] as IIngredient[];
generate_circuit_assembler_recipes(circuit_assembler, cardRedstone1Inputs, <opencomputers:card:4> as IItemStack, 400, 30, 0);

/* 
    misc
*/

# hover boots
assembler.recipeBuilder()
    .inputs([<gregtech:meta_item_1:32670> * 2, <gregtech:meta_item_1:32518> * 2, <ore:circuitBasic> * 2, <harvestcraft:hardenedleatherbootsitem>])
    .outputs(<opencomputers:hoverboots> as IItemStack)
    .duration(1200)
    .EUt(30)
    .buildAndRegister();