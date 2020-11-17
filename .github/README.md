# SlashIn
* Provides the /in command for delayed execution. Also provides /slashin, in case of conflicts with other addons providing /in.

## Examples
**Emote "yourname rocks" in 1.5 seconds:**  
`/in 1.5 /emote rocks`  

**Use your Argent Crusader's Tabard to teleport, then put your other tabard back afterwards:**  
`/equip Argent Crusader's Tabard`  
`/use Argent Crusader's Tabard`  
`/in 12 /equip Scryers Tabard`

## WARNING: Known Limitations
Many types of commands can't be delayed, especially ones that cast spells. If you receive an error dialog saying "Interface action failed because of an AddOn" then that command can't be delayed.

## Download
https://www.curseforge.com/wow/addons/slash-in