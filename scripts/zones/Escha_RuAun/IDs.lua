-----------------------------------
-- Area: Escha_RuAun
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[tpz.zone.ESCHA_RUAUN] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED = 6382, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED           = 6388, -- Obtained: <item>.
        GIL_OBTAINED            = 6389, -- Obtained <number> gil.
        KEYITEM_OBTAINED        = 6391, -- Obtained key item: <keyitem>.
        ITEMS_OBTAINED          = 6397, -- You obtain <number> <item>!
    },
    mob =
    {
    },
    npc =
    {
    },
}

return zones[tpz.zone.ESCHA_RUAUN]
