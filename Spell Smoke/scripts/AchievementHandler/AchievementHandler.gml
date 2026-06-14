function achievement_get_data(_id)
{
    if (variable_struct_exists(global.achievements, _id))
    {
        return global.achievements[$ _id];
    }

    return undefined;
}

function achievement_unlock(_id)
{

    var ach = achievement_get_data(_id);

    if (ach != undefined)
    {
        array_push(global.achievementQueue, ach);
    }
}

function achievement_popup(_id)
{
    achievement_unlock(_id);
}