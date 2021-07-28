
function ancient_technology:ancient_forge/tick

function ancient_technology:ancient_automaton/tick

function ancient_technology:miyagitron/tick

function ancient_technology:chromatron/tick

function ancient_technology:sender_chest/tick

function ancient_technology:ancient_anthology/tick

function ancient_technology:redstone_portal/tick

# take stolen blockers off players
clear @a #ancient_technology:all{tag:{GuiComponent: 1b}}

scoreboard players set AncientTechnology __crafting_tick 0 