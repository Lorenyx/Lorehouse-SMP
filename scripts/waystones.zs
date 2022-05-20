// ==============================================================

// Removes default waystone recipes
craftingTable.removeByRegex("waystones:.*waystone");
// Stone waystone
craftingTable.addShaped("waystone", <item:waystones:waystone>, [
    [<tag:items:c:stones>, <item:waystones:pocket_wormhole>, <tag:items:c:stones>], 
    [<tag:items:c:stones>, <item:waystones:local_void>, <tag:items:c:stones>],
    [<item:minecraft:obsidian>, <item:tokenablefurnaces:diamondtoken>, <item:minecraft:obsidian>]
]);
// Desert Waystone
craftingTable.addShaped("desert_waystone", <item:waystones:desert_waystone>, [
    [<tag:items:c:sandstones>, <item:waystones:pocket_wormhole>, <tag:items:c:sandstones>], 
    [<tag:items:c:sandstones>, <item:waystones:local_void>, <tag:items:c:sandstones>],
    [<item:minecraft:obsidian>, <item:tokenablefurnaces:diamondtoken>, <item:minecraft:obsidian>]
]);
// Red Desert Waystone - waystones:red_desert_waystone
craftingTable.addShaped("red_desert_waystone", <item:waystones:red_desert_waystone>, [
    [<tag:items:c:red_sandstones>, <item:waystones:pocket_wormhole>, <tag:items:c:red_sandstones>], 
    [<tag:items:c:red_sandstones>, <item:waystones:local_void>, <tag:items:c:red_sandstones>],
    [<item:minecraft:obsidian>, <item:tokenablefurnaces:diamondtoken>, <item:minecraft:obsidian>]
]);
// Stonebricks waystone
craftingTable.addShaped("stone_bricks_waystone", <item:waystones:stone_brick_waystone>, [
    [<tag:items:minecraft:stone_bricks>, <item:waystones:pocket_wormhole>, <tag:items:minecraft:stone_bricks>], 
    [<tag:items:minecraft:stone_bricks>, <item:waystones:local_void>, <tag:items:minecraft:stone_bricks>],
    [<item:minecraft:obsidian>, <item:tokenablefurnaces:diamondtoken>, <item:minecraft:obsidian>]
]);
// Netherbrick waystone - waystones:nether_brick_waystone
craftingTable.addShaped("nether_brick_waystone", <item:waystones:nether_brick_waystone>, [
    [<tag:items:c:nether_bricks>, <item:waystones:pocket_wormhole>, <tag:items:c:nether_bricks>], 
    [<tag:items:c:nether_bricks>, <item:waystones:local_void>, <tag:items:c:nether_bricks>],
    [<item:minecraft:obsidian>, <item:tokenablefurnaces:diamondtoken>, <item:minecraft:obsidian>]
]);
// Netherbrick waystone
craftingTable.addShaped("red_nether_brick_waystone", <item:waystones:red_nether_brick_waystone>, [
    [<item:minecraft:red_nether_bricks>, <item:waystones:pocket_wormhole>, <item:minecraft:red_nether_bricks>], 
    [<item:minecraft:red_nether_bricks>, <item:waystones:local_void>, <item:minecraft:red_nether_bricks>],
    [<item:minecraft:obsidian>, <item:tokenablefurnaces:diamondtoken>, <item:minecraft:obsidian>]
]);
// Endstone brick waystone
craftingTable.addShaped("end_stone_brick_waystone", <item:waystones:end_stone_brick_waystone>, [
    [<item:minecraft:end_stone_bricks>, <item:waystones:pocket_wormhole>, <item:minecraft:end_stone_bricks>], 
    [<item:minecraft:end_stone_bricks>, <item:waystones:local_void>, <item:minecraft:end_stone_bricks>],
    [<item:minecraft:obsidian>, <item:tokenablefurnaces:diamondtoken>, <item:minecraft:obsidian>]
]);
// Deepslate waystone
craftingTable.addShaped("deepslate_brick_waystone", <item:waystones:deepslate_brick_waystone>, [
    [<tag:items:c:deepslate_bricks>, <item:waystones:pocket_wormhole>, <tag:items:c:deepslate_bricks>], 
    [<tag:items:c:deepslate_bricks>, <item:waystones:local_void>, <tag:items:c:deepslate_bricks>],
    [<item:minecraft:obsidian>, <item:tokenablefurnaces:diamondtoken>, <item:minecraft:obsidian>]
]);
// Refined blackstone c:refined_blackstones
craftingTable.addShaped("refined_blackstone_waystone", <item:waystones:blackstone_brick_waystone>, [
    [<tag:items:c:refined_blackstones>, <item:waystones:pocket_wormhole>, <tag:items:c:refined_blackstones>], 
    [<tag:items:c:refined_blackstones>, <item:waystones:local_void>, <tag:items:c:refined_blackstones>],
    [<item:minecraft:obsidian>, <item:tokenablefurnaces:diamondtoken>, <item:minecraft:obsidian>]
]);

// ==============================================================

// Removes default Abyss Watcher recipe
// craftingTable.removeByName("waystones:abyss_watcher");
// // Add new recipe
// craftingTable.addShapeless("abyss_watcher", <item:waystones:abyss_watcher>, [<item:minecraft:nautilus_shell>, <item:minecraft:ender_pearl>, <item:minecraft:ghast_tear>]);

// ==============================================================

// Removes default Local Void recipe
// craftingTable.removeByName("waystones:local_void");
// craftingTable.addShaped("local_void", <item:waystones:local_void>, [
//     [<item:minecraft:air>, <item:minecraft:heart_of_the_sea>, <item:minecraft:air>],
//     [<item:minecraft:blaze_powder>, <item:waystones:abyss_watcher>, <item:minecraft:blaze_powder>],
//     [<item:minecraft:air>, <item:minecraft:blaze_powder>, <item:minecraft:air>]
// ]);