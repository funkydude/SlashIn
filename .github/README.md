# SlashIn
* Provides the /in command for delayed execution. Also provides /slashin, in case of conflicts with other addons providing /in.
* Also provides the /int command for throttled actions, when you like to spam click macros but only want the action to happen once.

## Examples
**Emote "yourname rocks" in 1.5 seconds:**  
`/in 1.5 /emote rocks`  

**Use your Argent Crusader's Tabard to teleport, then put your other tabard back afterwards:**  
`/equip Argent Crusader's Tabard`  
`/use Argent Crusader's Tabard`  
`/in 12 /equip Scryers Tabard`

**Spam click a macro to send a message in party chat, but you only want the message to appear once:**  
`/int 5 /p Here we go`

## WARNING: Known Limitations
* `/say` and `/yell` can only be automated in dungeons/raids, not outdoors. Use `/emote` when outdoors.
* Many types of commands can't be delayed, especially ones that cast spells. If you receive an error dialog saying "Interface action failed because of an AddOn" then that command can't be delayed.

## Download
https://www.curseforge.com/wow/addons/slash-in