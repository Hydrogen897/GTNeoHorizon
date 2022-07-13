#loader gregtech

import mods.gregtech.Material;
import mods.gregtech.MaterialBuilder;
import mods.gregtech.HeatingCoils;

//tungsten steel titanium alloy register.
var wtf_alloy = MaterialBuilder(32000, "tungsten_steel_titanium_alloy")
    .fluid()
    .ingot(27, 0)
    .color(0x2A2A2A)
    .toolStats(11.5, 16.5, 17590, 6)
    .blastTemp(5000)
    .fluidPipeProperties(4990, 1250, true)
    .iconSet("shiny")
    .components([<material:tungsten>, <material:steel>, <material:titanium>])
    .flags(["generate_plate", "generate_rod", "generate_frame", "generate_gear", "exclude_plate_compressor_recipe", "no_smashing", "generate_foil", "generate_bolt_screw", "generate_ring", "generate_spring", "generate_spring_small", "generate_gear_small", "generate_rotor", "generate_dense", "generate_round"])
    .build();

//wtfalloy heating coil.
HeatingCoils.add(<blockstate:gregtech:compressed:variant=tungsten_steel_titanium_alloy,active=false>, "WTFA", 4990, 7, 8, 5, <material:tungsten_steel_titanium_alloy>);
