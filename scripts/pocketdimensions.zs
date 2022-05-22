// Remove default recipes
craftingTable.removeByRegex("dimdoors:.*_dimensional_door");

// Gold dimensional door : Leads to a pocket dungeon full of treasures, puzzles, and traps.
craftingTable.addShaped("quartz_dimension_door", <item:dimdoors:quartz_dimensional_door>, [
    [<item:dimdoors:quartz_door>, <item:minecraft:ender_eye>, <item:dimdoors:quartz_door>], 
    [<item:dimdoors:quartz_door>, <item:waystones:local_void>, <item:dimdoors:quartz_door>],
    [<item:minecraft:obsidian>, <item:tokenablefurnaces:amethysttoken>, <item:minecraft:obsidian>]
]);

// Gold dimensional door : Leads to a pocket dungeon full of treasures, puzzles, and traps.
craftingTable.addShaped("gold_dimension_door", <item:dimdoors:gold_dimensional_door>, [
    [<item:dimdoors:gold_door>, <item:minecraft:ender_eye>, <item:dimdoors:gold_door>], 
    [<item:dimdoors:gold_door>, <item:waystones:local_void>, <item:dimdoors:gold_door>],
    [<item:minecraft:obsidian>, <item:tokenablefurnaces:goldtoken>, <item:minecraft:obsidian>]
]);

// Iron dimensional door : Create a new and empty dimensional pocket.
craftingTable.addShaped("iron_dimension_door", <item:dimdoors:iron_dimensional_door>, [
    [<item:minecraft:iron_door>, <item:minecraft:ender_eye>, <item:minecraft:iron_door>], 
    [<item:minecraft:iron_door>, <item:waystones:local_void>, <item:minecraft:iron_door>],
    [<item:minecraft:obsidian>, <item:tokenablefurnaces:irontoken>, <item:minecraft:obsidian>]
]);

//dimdoors:oak_dimensional_door
craftingTable.addShaped("oak_dimension_door", <item:dimdoors:oak_dimensional_door>, [
    [<item:minecraft:ender_eye>, <tag:items:minecraft:wooden_doors>, <item:minecraft:ender_eye>]
]);
