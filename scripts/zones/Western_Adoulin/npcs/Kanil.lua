-----------------------------------
-- Area: Western Adoulin
--  NPC: Kanil
-- Type: Shop NPC
--  @zone 256
--  !pos 154 4 -5 256
-----------------------------------
package.loaded["scripts/zones/Western_Adoulin/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/shop");
require("scripts/zones/Western_Adoulin/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    -- Standard shop
    player:showText(npc, KANIL_SHOP_TEXT);
    local stock = {
        610, 60,     -- San D'Or. Flour
        4509, 12,     -- Distilled Water
        936, 16,     -- Rock Salt
        633, 16,     -- Olive Oil
        5299, 148,    -- Salsa
        1523, 316,    -- Apple Mint
    }
    dsp.shop.general(player, stock);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
