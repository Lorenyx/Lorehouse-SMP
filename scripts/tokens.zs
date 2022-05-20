// // Remove default recipes
// // craftingTable.removeByRegex("tokenablefurnaces:.*token");

// // vairable names of blocks
// var amethyst_block = <item:minecraft:amethyst_block>;
// var amethyst = <item:minecraft:amethyst_shard>;

// var diamond_block = <item:minecraft:diamond_block>;
var diamond = <item:minecraft:diamond>;

// var gold_block = <item:minecraft:gold_block>;
// var gold = <item:minecraft:gold_ingot>;

// var iron_block = <item:minecraft:iron_block>;
// var iron = <item:minecraft:iron_ingot>;

// // Amethyst token
// craftingTable.addShaped("amethyst_token", <item:tokenablefurnaces:amethysttoken>, [
//     [amethyst_block, amethyst, amethyst_block],
//     [amethyst, <item:tokenablefurnaces:goldtoken>, amethyst],
//     [amethyst_block, amethyst, amethyst_block]
// ]);

// Diamond token
craftingTable.removeByName("tokenablefurnaces:diamondtoken");
craftingTable.addShaped("diamond_token", <item:tokenablefurnaces:diamondtoken>, [
    [diamond, diamond, diamond],
    [diamond, <item:tokenablefurnaces:goldtoken>, diamond],
    [diamond, diamond, diamond]
]);

// // Gold token
// craftingTable.addShaped("gold_token", <item:tokenablefurnaces:goldtoken>, [
//     [gold_block, gold, gold_block],
//     [gold, <item:tokenablefurnaces:irontoken>, gold],
//     [gold_block, gold, gold_block]
// ]);

// // Gold token
// craftingTable.addShaped("iron_token", <item:tokenablefurnaces:irontoken>, [
//     [iron_block, iron, iron_block],
//     [iron, <tag:items:minecraft:planks>, iron],
//     [iron_block, iron, iron_block]
// ]);