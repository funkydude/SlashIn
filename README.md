# SlashIn
* Provides the /in command for delayed execution. Also provides /slashin, in case of conflicts with other addons providing /in.

## Examples
**Say "hi" in 1.5 seconds:**  
`/in 1.5 /say hi`  

**Use your Argent Crusader's Tabard to teleport, then put your other tabard back afterwards:**  
`/equip Argent Crusader's Tabard`  
`/use Argent Crusader's Tabard`  
`/in 12 /equip Scryers Tabard`

## Known Limitations
Many types of commands can't be delayed, especially ones that cast spells. If you receive an error dialog saying "SlashIn has been blocked from an action only available to the Blizzard UI," then that command can't be delayed.

## Download
https://www.curseforge.com/wow/addons/slash-in