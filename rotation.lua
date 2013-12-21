-- ProbablyEngine Rotation Packager
-- Custom Affliction Warlock Rotation
-- Created on Nov 21st 2013 1:58 pm
rootAffli = { }
function rootAffli.hs () --Create Health Stone
if GetItemCount (5512, nil, true) < 3 then return true end 
return false
end 
ProbablyEngine.rotation.register_custom(265, "Apoc_AfflictionPvP", {

--InCombat

 --Buffs 

  {"109773",
    "!player.buff(Dark Intent)"}, 
      --Dark Intent
  {"111397",
    "!player.buff(Blood Horror)"}, 
      --Blood Horror
  {"113860",
    "!player.buff(113860)"}, 
      --Dark Soul: Misery
  {"6229",
    "!player.buff(6229)"}, 
      --Twilight Ward

 --Mana

  {"1454",{
    "player.health >= 90",
    "player.mana <= 50"},
    "player"},  
     --Life Tap

 --Pet
  {"112868","!pet.exists",
    "modifier.last > 2"}, 
   
 --OHHSHITZ

  {"#5512", 
    "player.health <= 40"}, 
     --Healthstone
  {"104773",
    "player.health <= 50"}, 
     --Unending Resolve
  {"48030",
    "!player.health <= 30"}, 
      --Demonic Circle: Teleport
  {"5782",{
    "!target.immune.fear",
    "target.range <= 6"}}, 
     --Fear
  {"108416",
     "player.health <= 40"}, 
      --Sacrificial Pact  
  {"5484",{
    "modifier.cooldown",
    "!target.immune.fear",
    "target.range <= 9"}},  
     --Howl of Terror
  {"48018",
    "modifier.lshift"},  
     --Demonic Circle: Summon
  {"111771",
    "modifier.lcontrol"}, 
     --Demonic Gateway
  {"689", 
    "player.health <= 90"}, 
     --Drain Life


 --Interupts

  {"5782",
    "target.casting",
    "!target.immune.fear",
    "target.range <= 39"}, 
     --Fear
  {"6789",
    "target.casting",
    "!target.immune.fear",
    "target.range <= 10"}, 
     --Mortal Coil

 --Deeps

  {"1490",
    "!target.debuff(1490)"}, 
     --Curse of the Elements
  {"18223",
    "!target.debuff(18223)",
    "target.moving"},  
     --Curse of the Exhaustion
  {"77799",
    "player.moving"}, 
     --Fel Flame
  {"!980",
    "target.debuff(980).duration <= 3"}, 
      --Agony
  {"!30108",
    "target.debuff(30108).duration <= 3"},
     --Unstable Affliction
  {"!172",{
    "target.debuff(172).duration <= 17",
    "player.spell(172).casted < 1"}}, 
     --Corruption
  {"!48181", 
    "!target.debuff(48181)"}, 
      --Haunt
  {"1120",
    "target.health <= 20"}, 
     --Drain Soul
  {"103103"}, 
    --Malefic Grasp
  
 --Healing
   ---HEALING?!?! Theres no crying in Baseball!!!
},{

 --OOCBuffs 

  {"109773",
    "!player.buff(109773)"}, 
      --Dark Intent
  {"111397",
    "!player.buff(111397)"}, 
      --Blood Horror
  {"6201",
    (function() return rootAffli.hs() end)}, 
     --Create Healthstone

--Mana

  {"1454",{
    "player.health >= 90",
    "player.mana <= 50"},
    "player"}, 
     --Life Tap

--Ports

  {"48018",
    "modifier.lshift"}, 
     --Demonic Circle: Summon
  {"111771",
    "modifier.lcontrol"}, 
     --Demonic Gateway

--SummonPet

  {"112868",
    "!pet.exists"},

})
ProbablyEngine.rotation.register_custom(265, "Apoc_Affliction_2v2", {

--InCombat

 --SetUpPorts

  {"48018",
    "modifier.lshift"}, 
     --Demonic Circle: Summon
  {"111771",
    "modifier.lcontrol"}, 
     --Demonic Gateway

 --Buffs 

  {"109773",
    "!player.buff(109773)"}, 
     --Dark Intent
  {"111397",
    "!player.buff(111397)"}, 
     --Blood Horror
  {"113860",
    "!player.buff(113860)"}, 
     --Dark Soul: Misery
  {"6229",
    "!player.buff(6229)"}, 
     --Twilight Ward

 --Mana

  {"1454",{
    "player.health >= 90",
    "player.mana <= 50"},
    "player"}, 
     --Life Tap

 --Pet
  {"112868","!pet.exists",
    "modifier.last > 2"},
 
 --OHHSHITZ

  {"104773",
     "player.health < 50"}, 
      --Unending Resolve
  {"48030",
    "player.health < 30"}, 
     --Demonic Circle: Teleport
  {"108416",
     "player.health < 40"}, 
      --Sacrificial Pact
  {"5484",
    "modifier.cooldown",
    "!target.immune.fear",
    "target.range <= 7"},  
     --Howl of Terror
   {"#5512", 
     "player.health <= 45"}, 
      --Healthstone


 --Interupts

  {"5782",{
    "focus.exists",
    "focus.casting",
    "!focus.immune.fear",
    "focust.range <= 39"},
    "focus"}, 
     --Fear
  {"6789",{
    "focus.exists",
    "focus.casting",
    "!focus.immune.fear",
    "focus.range <= 10"},
    "focus"}, 
     --Mortal Coil

 --Deeps

  {"1490",
    "!target.debuff(1490)"}, 
     --Curse of the Elements
  {"18223",
    "target.debuff(18223)",
    "target.moving"},  
     --Curse of the Exhaustion
  {"!980",
    "target.debuff(980).duration < 24"}, 
     --Agony
  {"!30108",{
    "target.debuff(30108).duration <= 14",
    "player.spell(30108).casted < 1"}},  
     --Unstable Affliction
  {"!172",{
    "target.debuff(172).duration <= 17",
    "player.spell(172).casted < 3"}}, 
     --Corruption
  {"!48181", 
    "target.debuff(48184).duration < 8"}, 
     --Haunt
  {"1120",
    "target.health <= 20"}, 
     --Drain Soul
  {"103103",
    "target.health > 20"}, 
     --Malefic Grasp
  {"689", 
    "player.health <= 90"}, 
     --Drain Life
  {"77799",
    "player.moving"}, 
     --Fel Flame
 
},{
 
 --OOCBuffs 

  {"109773",
    "!player.buff(109773)"}, 
      --Dark Intent
  {"111397",
    "!player.buff(111397)"}, 
      --Blood Horror
  {"6201",
    (function() return rootAffli.hs() end)}, 
     --Create Healthstone

  {"1454",{
    "player.health >= 90",
    "player.mana <= 50"},
    "player"}, 
     --Life Tap

  {"48018",
    "modifier.lshift"}, 
     --Demonic Circle: Summon
  {"111771",
    "modifier.lcontrol"}, 
     --Demonic Gateway

  {"112868",
    "!pet.exists"},

})
