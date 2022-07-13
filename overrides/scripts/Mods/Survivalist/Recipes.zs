#priority 39999

import mods.crafttweaker.item.IItemStack;

var cb = "_chopping_block";

var chs as IItemStack[] = [
    itemUtils.getItem("oak" ~ cb)
    itemUtils.getItem("spruce" ~ cb)
    itemUtils.getItem("birch" ~ cb)
    itemUtils.getItem("jungle" ~ cb)
    itemUtils.getItem("acacia" ~ cb)
];

var logs as IItemStack[] = [
    <minecraft:log>
    <minecraft:log:1>
    <minecraft:log:2>
    <minecraft:log:3>
    <minecraft:log2>
];

for i, ch in chs {
    var log = logs[i];
    recipes.removeShapeless(ch, [log]);
    recipes.addShaped(ch, [log, log]);
}

var woodLr = <contenttweaker:long_rod_wood>
var rack = <survivalist:rack>;
recipes.remove(rack);
recipes.addShaped(rack,
 [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
 [null, woodLr, null],
 [woodLr, null, woodLr]]);

    
    


