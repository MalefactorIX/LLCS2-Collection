## Thermal Damage
Refers to COLD (3) and FIRE (5) damage types.

## Blast Damage
Refers to FORCE (6) and EXPLOSIVE (102) damage types.

## Physical Damage
Refers to SLASHING (12), PIERCING (8), and BLUDGEONING (2) damage types.

## Rez-queue
An instance of the region delaying the creation of new objects while it 'catches up'. During such an event, scripts which attempt to spawn additional objects may be force-slept based on several factors.

Latency or region performance is a factor but can occur even when region impact appears minimal. 

## Rubberbanding
A rare instance of network-based lag. This happens because of poor communication between the client and the region which leads to interpolation becoming heavily desynced with your actual position.

## Primshooting
Self-explanatory. However, what people normally refer to abusing physical interpolation to clip objects through cover in order to hit targets behind them. This is due to the fact physical objects move in steps and not in a smooth line like you would see client-side. This is the same region why objects moving at 200m/s need to be roughly 4.5m long as otherwise they could move an entire step without contacting a wall.
