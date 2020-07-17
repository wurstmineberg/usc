This is a [data pack](https://minecraft.gamepedia.com/Data_Pack) for [*Minecraft: Java Edition*](https://minecraft.gamepedia.com/Java_Edition) that runs the [Ultra Softcore](https://wurstmineberg.de/wiki/usc) minigame.

# Usage

1. [Set up a Minecraft server](https://minecraft.gamepedia.com/Tutorials/Setting_up_a_server) with a new world and at least the following [server.properties](https://minecraft.gamepedia.com/Server.properties):
    ```
    allow-flight=true
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
9. You will receive a book which you can use to change game options, assign players to teams, and unlock the game start.
10. Once you're done setting things up, you should [`/deop`](https://minecraft.gamepedia.com/Commands/deop) yourself to disable spawn protection.
