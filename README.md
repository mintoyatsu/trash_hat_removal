# Trash Hat Removal Mod (THR)
This repository contains modified scripts from Clean TF2 to automate taking out the garbage that is TF2's cosmetic cases. [Inspired by Zesty's video on the Smissmas 2021 update.](https://www.youtube.com/watch?v=REIMVw84hj4)

This mod will work on any server, including Valve servers and sv_pure servers. It functions identically to the traditional no hat mods. No preloading required.

If you'd like to tweak the blacklist, clone/fork the repository, edit the script and make your own version. See below for instructions.

**If you see any players with missing heads or feet, or any cosmetic styles that have slipped through undetected, please report this as an issue with the name of the affected cosmetic. PULL REQUESTS ARE WELCOME!**

## What has been removed?

- A lot of garish-looking Scream Fortress and Smissmas stuff (restricted or not).
- All of the blatant furry costumes and most cosmetics that obnoxious furries use.
- Most of the 'assist pet' items, like floating pets, shoulder pets, pocket pets, etc.
- Some copy & pasted generic designs, like beanies, Point and Shoot clones, etc.
- Wacky random [insert object here] on top of [insert mercenary here] and other pointless cosmetics.
- A few ugly promo items and blatant meme cosmetics.

Check `model_blacklist.txt` for the full list of removed cosmetics. Over 300 cosmetics have been completely removed from the game so far.

## What hasn't been removed?

- Most Valve-created cosmetics.
- Cosmetics added to the game in 2012 and earlier, like the Ghastly Gibus, MONOCULUS!, etc.

Blacklisting cosmetics released prior to 2013 (before the workshop importer was implemented) is tedious, so I didn't bother. Old hats are also nostalgic for some people, and are part of the game's identity at this point.

## Building the mod

**These build scripts are Windows-only for now.** The resulting VPK file can still be used on Mac and Linux versions of TF2, however.

Make sure this folder is inside your `tf\custom\` folder or else the scripts will **NOT** work! Your directory structure should look like this: `tf\custom\trash_hat_removal\model_blacklist.bat`

Make sure any existing `models\` directory inside this folder is deleted before you begin. When in doubt, delete this entire folder and clone the repository again for a fresh start.

Run `model_blacklist.bat` inside this folder and wait for the process to complete. All of the needed files will be created in the newly-made `models\` folder. At this point you can start the game and the mod will work.

If you want to make a VPK file (recommended for faster load times), you can create one manually or run the included `pack_vpk.bat` script, ignoring any errors. A VPK file will be created in this directory which you can then drag out into your `tf\custom\` folder. After that, you can delete this folder and start the game with your VPK installed.

## Updating the mod

This mod doesn't need constant updates (it will work in any patch of TF2), but to block new hats in the future you will need to update the blacklist.

When a new update comes out, cosmetic data will be added to `tf\scripts\items\items_game.txt` (the item schema), which can be opened with any text editor. Simply search for the cosmetic name and look for the model path (including model paths for alternate cosmetic styles, if any), and append the model path (without ending filename or trailing slash) to `model_blacklist.txt` in this repository.

Once everything is updated, you can build the mod with the instructions above and replace your VPK file with the new one, then restart the game.

Here's an example of how to blacklist entire directories and all models within it. This is all you need to do for most new cosmetics:
```
models/workshop/player/items/all_class/cosmetic_name
models/workshop/player/items/all_class/cosmetic_name_style2
```

In rare instances where you need to blacklist models individually instead of a whole directory, use the following:
```
models/workshop/player/items/all_class/cosmetic_name/cosmetic_name_scout.dx80.vtx
models/workshop/player/items/all_class/cosmetic_name/cosmetic_name_scout.dx90.vtx
models/workshop/player/items/all_class/cosmetic_name/cosmetic_name_engineer.dx80.vtx
models/workshop/player/items/all_class/cosmetic_name/cosmetic_name_engineer.dx90.vtx
```
...and so on. Lines starting with a semicolon will be ignored, so you can leave comments.

To allow a cosmetic, it's as simple as removing the line(s) from the blacklist.

## Cosmetic blacklist warning

Some cosmetics disable certain playermodel bodygroups when equipped, like Pyro's head, and the Scout and Demoman's shoes. You can find out what cosmetics do this by checking the item's equip region and bodygroup keyvalues in the item schema. Don't blacklist these models or players will be missing heads and feet in-game.

If a blacklisted cosmetic hides the Scout/Soldier/Engineer/Sniper's default hat, they will end up hatless if it is equipped. This isn't really game-breaking or lore-breaking though, and can be safely ignored.
