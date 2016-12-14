# improved_initiative_tracker
**Update** Added new functionality! Users can now log in, save multiple encounters, and let players view the encounter (without any sensitive information). See the [screenshots](https://github.com/agilaz/improved_initiative_tracker/wiki/Screenshots) for what these changes look like.
___
This project is an initiative tracker for Pathfinder. It seeks to track the order of a turn-based game, where each creature gets a random “initiative” score to determine when it goes in relation to others. The system seeks to also serve as a quick reference for those creatures, giving easy access to their statistics (as added by the user). The functionality that distinguishes this tracker from other initiative trackers is the managing of statuses. A status is something that can be applied to creatures for a set period of time. While a creature is affected, its stats may change. Some statuses allow the creature to attempt to resist each round. If that is the case, they roll a 20-sided die, add some ability (fort, ref, or will, as set by the status), and determine if it meets or exceeds the status DC. If it does, the status is removed at the end of the creature’s turn. My system automates this process, so that players do not have to remember to do it every turn. The system also allows a user to add creatures to a database, edit and view those creatures, add copies of them to combat, and add statuses to the creatures in combat.
