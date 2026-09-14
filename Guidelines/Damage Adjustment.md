# [Preface]
This is by no means a ruleset or enforced policy, but rather a guideline for a relatively fair design adoption for systems which alter damage recieved by avatars.
All guidelines are written under the assumption that guns and munitions will remain relatively unchanged damage-wise.
Adjustments to values given should be considered. What is written here is based on prior playtesting and may not best adapt to the current flow of combat.

All relevant damage types and terms are listed on the LSL wiki: https://wiki.secondlife.com/wiki/LlDamage

THIS DOCUMENTATION IS ONLY IN REGARDS TO AVATARS.

# [All]
- All damage sources which inflict negative damage should be unaffected unless done so for balancing reasons, ie. having sturdier armor systems reduce healing potency. Any such adjustment should be done by the armor system itself and not the utility/item serving as the healing source.
- Anything which repairs and alters the durability or duration of any damage-altering effect should be given the same consideration as healing.
- Impact Damage (-1) should be considered an invalid damage type and be allowed to be completely blocked with no penalty or consideration for balancing.

# [Weapons]
- All standard bullets and munitions will use the GENERIC (0) damage type and should not deal more than 100 damage.
- Weapons should only deal damage most relevant to their type. ie. Flame weapons should deal FIRE (5) damage, explosives should use EXPLOSIVE (102). 
- Weapons which exceed the 100 damage threshold should do so under circumstances that are reasonable, ie. A bolt-action AMR should obviously do more damage than an SMG.
    As a baseline consideration:
        600+RPM: 100 LLCS
        400 or Less: 150 LLCS
        120 or Less: 200 to 400
        60 or Less: 500 to 1000 LLCS
        Anything over 1000 LLCS should be considered griefing. At 90% damage resistance, 1000 LLCS is an instant kill to all valid targets.
- Melee attacks should deal either SLASHING (12), PIERCING (8), or BLUDGEONING (2) damage based on weapon type. Other types are acceptable when relevant. This will allow the high-risk nature of these weapons to not be made completely irrelevant with the introduction of damage resistance, excluding specific types of armors which would reduce it.

# [Armor]
- Regions should focus on only permitting a single armor system, either ones they provide directly or have authorized for use. This system should be provided freely and with no additional cost to any who would desire to use it. 
- Under no circumstance should any armor system grant a damage resistance of 100% for any reason other than situations where an avatar should not be damaged, ie. to prevent team killing or spawn griefing.
- While all armor systems should be permitted to reduce generic damage, other damage resistances should reduce the amount granted to this specific resistant. For example, flame-resistant armor should not be as good at blocking bullets as ballistic vests. No armor system should alter the damage from more than 3 damage types, and no where near to the same degree as armors specifically design to block a singular damage type.
- Armor should decay relative to the damage blocked. This value should not typically not exceed 200. Once armor has fully decayed, it should not provide any damage resistance until repair or the user has perished.
- While often suggested, engine limitations prevents us from inhibiting avatar movement without introducing several problems. People should design 'heavier' armors with this in mind, and look for alternative ways to balance the increased survivability.
- While not a requirement, creators and maintainers of any system which alters damage should make the source-code open and available for the sake of transparency, maintaining fair play, and monitoring for any potential issues with a given design. A system maintained and assisted by the community will generally be better than one only overseen by 1 person or a small group of individuals. "Feel free to fork the project under a"
