This is a [data pack](https://minecraft.gamepedia.com/Data_Pack) for [*Minecraft: Java Edition*](https://minecraft.gamepedia.com/Java_Edition) that runs the [Ultra Softcore](https://wurstmineberg.de/wiki/usc) minigame.

# Usage

1. [Set up a Minecraft server](https://minecraft.gamepedia.com/Tutorials/Setting_up_a_server) with a new world and at least the following [server.properties](https://minecraft.gamepedia.com/Server.properties):
    ```
    enable-command-block=true
    function-permission-level=3
    spawn-protection=0
    ```
    See the server.properties file included in this repository for recommended values (`rcon.password` should be adjusted).
2. [Download](https://github.com/wurstmineberg/usc/archive/master.zip) and unzip the data pack.
3. Move the resulting folder into the `datapacks` folder inside the world folder.
4. Make sure resource-intensive services and cronjobs like other worlds or Overviewer are disabled.
5. Start the server.
6. Connect to the server.
7. Give yourself operator access.
8. From within Minecraft, run the [command](https://minecraft.gamepedia.com/Commands) `/function usc:init`.
9. You will be teleported into a room with a sign. Wait until that sign says “done”, then exit the room through the new passage to your left.
10. Assign players to teams:
    * You can use the buttons on the wall to your right to randomize teams.
    * You can also use the [`/team`](https://minecraft.gamepedia.com/Commands/team) command to assign players to teams. The available teams are shown on the signs.
    * You can also toggle whether the [Ender dragon](https://minecraft.gamepedia.com/Ender_Dragon) participates using the lever. If she participates, she will form her own team.
11. Once you as the admin are ready for the game to start, press the button in the other corner of the room.
12. You will be teleported into your team lobby (or the main lobby if you're not in a team yet). You can continue to change team assignments using `/team`. Instruct the teams to pull the lever in their team lobby once they are ready to play. The game will start once all teams are ready and all players are either in a team or in spectator mode.
13. [`/deop`](https://minecraft.gamepedia.com/Commands/deop) yourself to disable spawn protection.
