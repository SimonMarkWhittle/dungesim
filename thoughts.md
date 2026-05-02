
plan
only Person as first-order entity

people are in rooms
rooms have resources
people need em

people get
- hungry
- thirsty
- wounded

resources can replenish
- resource type
- replenish amount
- replenish max

basically people need to chase some kind of expected value of a behavior
do we make the guys consider all their options and score them?
do they all have the same scoring metrics but their rolls modify it?

.

combat model
people glom into melees
a melee can hold 6 people
people can belong to multiple melees


.

gather all available actions
score them
choose
cooperate cancel
disambiguate


Remember last N rooms they've been to and don't backtrack


basic action choosing
Leave(RoomConnection) -- Go out a specific way
Follow(Person)        -- Leave with someone who is leaving
Fight(Person/Melee?)
- In Melee
    - Break Out
    - Hold Firm
    - Press
    - (Exhort)
    - (Support)
- Out of Melee
    - Harry
    - Engage
    - Leave
    - (Exhort)
    - (Support)


Rest                   -- satisfies needs
- eat
- drink
- medicine
- wait

Commune(Person)         -- increases cohesion

Beg(Person, Stuff)      -- beg
Rob(Person, Stuff)      -- threaten
Steal(Person, Stuff)    -- take swift/sneakily
Supply(Stuff)           -- pick up off ground
- resources
- weapon
- armor

Disambiguate(Action)
- Force
- Back Off
- Cooperate

Study(_)
