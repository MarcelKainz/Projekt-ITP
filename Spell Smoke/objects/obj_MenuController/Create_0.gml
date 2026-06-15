global.achievementQueue = [];
global.achievementPopupTimer = 0;

global.achievements = {};

global.achievements[$ "easy"] = {
    title : "Beginner Bounty Hunter",
    desc : "Beat the easy difficulty",
    sprite : spr_EasyDifficultyButtonGold
};

global.achievements[$ "medium"] = {
    title : "Adept Bounty Hunter",
    desc : "Beat the medium difficulty",
    sprite : spr_MediumDifficultyButtonGold
};

global.achievements[$ "hard"] = {
    title : "Expert Bounty Hunter",
    desc : "Beat the hard difficulty",
    sprite : spr_HardDifficultyButtonGold
};

global.achievements[$ "easyEndless"] = {
    title : "Easy Bucks",
    desc : "Beat 100 floors in the easy difficulty",
    sprite : spr_EasyDifficultyButtonDiamond
};

global.achievements[$ "mediumEndless"] = {
    title : "Hard Work",
    desc : "Beat 100 floors in the medium difficulty",
    sprite : spr_MediumDifficultyButtonDiamond
};

global.achievements[$ "hardEndless"] = {
    title : "Bounty Maniac",
    desc : "Beat 100 floors in the hard difficulty",
    sprite : spr_HardDifficultyButtonDiamond
};

global.achievements[$ "rapidFire"] = {
    title : "Spell Spammer",
    desc : "Double your spell casting speed",
    sprite : spr_TreasureAttackSpeed
};

global.achievements[$ "rich"] = {
    title : "Bone Hoarder",
    desc : "Have 100 bones at once",
    sprite : spr_Bone
};

global.achievements[$ "power"] = {
    title : "Gymbro",
    desc : "Have 5 strength",
    sprite : spr_TreasurePower
};

global.achievements[$ "speed"] = {
    title : "Speedster",
    desc : "Have twice the speed you started with",
    sprite : spr_TreasureSpeed
};

global.achievements[$ "tank"] = {
    title : "Iron Body",
    desc : "Have 10 maximum Healthpoints",
    sprite : spr_TreasureHealth
};

global.achievements[$ "sniper"] = {
    title : "Improved Vision",
    desc : "Have 3 Monarch's Monocle at once",
    sprite : spr_TreasureRange
};
