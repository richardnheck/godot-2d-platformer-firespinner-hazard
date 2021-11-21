# Godot "Fire Spinner" hazard for 2D platformer
This repository contains a Fire Spinner Hazard for a 2D platformer based on the "Burny Whirler" hazard from LevelHead.  

## Demo ##
The demo application exposes a gui editor to experiment with the Fire Spinner configuration.  The code is written for Godot v3.3.

[Demo on itch.io](https://parabolink.itch.io/fire-spinner-hazard-for-2d-platformer)

[![Demo](https://j.gifs.com/pZ9P2X.gif)](https://youtu.be/dAyWBLza_sI)


## Introduction ##
The Fire Spinner has two rotation styles with numerous settings to configure:
1. **Spin** - Fireballs spin around in a circle.
2. **Swing** - Fireballs swing side to side over a specified angle.

### Common Settings ###
| Setting | Description |
| ------------- | ------------- |
| Start Direction | The angle (degrees) where the rotation starts |
| Length | The number of the fireballs on a chain (1 to 5) |
| Chains | The number of fireball chains (1 to 4) |
| Gap | Alternate fireballs are hidden to leave a gap |
| Show Guides | Hide or show the drawing guides. Only for demonstration purposes.  Normally, the guides only appear in the Godot Editor |

### Spin Settings ###

| Setting | Description |
| ------------- | ------------- |
| Spin Speed | The speed of rotation (degrees/second).  Positive values result in clockwise rotation |

<img src="media/demo-screenshot-spin.png?raw=true" width="600">

### Swing Settings ###
| Setting | Description |
| ------------- | ------------- |
| Swing Speed | Speed of swing rotation (degrees/second). Positive values result in the swing starting in a clockwise direction |
| Swing Degrees | The angle of swing (degrees) from the start direction. E.g. When 90, a complete swing is 180 degrees |
| Swing Time Offset  | The offset time (seconds) in seconds by which the swing is delayed.  This results in the starting angle and direction being offset |

<img src="media/demo-screenshot-swing.png?raw=true" width="600">

## Configurability in Godot Editor ##
The Fire Spinner is configurable within the Godot Editor.  There is one additional setting that the can be set to turn off the animation of the guides within the editor.

<img src="media/screenshot-in-godot-editor.png?raw=true" width="600">


## LevelHead Burny Whirler
[LevelHead](https://www.bscotch.net/games/levelhead) is a 2D platformer game with an excellent level maker for creating and sharing them with the community.  The "Burny Whirler" is one of the many hazards that you can add to your level.  

|<img src="media/levelhead-burny-whirler-spin.png?raw=true" width="600">|
|:--:| 
| *Burny Whirler Spin Rotation* |

|<img src="media/levelhead-burny-whirler-swing.png?raw=true" width="600">|
|:--:| 
| *Burny Whirler Swing Rotation* |

## Notes ##
I have been inspired by LevelHead's Burny Whirler, but the code and settings do not attempt to copy the exact speed and timing of the Burny Whirler.  

One major difference is the sign of the speed and the start direction.  In my implementation, positive angles are clockwise and positive speeds results in clockwise rotation, whereas the Burny Whirler settings are opposite.  The reason I did this was to make it consistent with rotation in Godot. i.e positive rotation is clockwise. 

The Fire Spinner was created for my 2D pixel platformer ["Castle Yokai"](https://parabolink.itch.io/castle-yokai) so the fireball size and spacing has been set for the specific resolution of my game.  To adjust the size of the fireball spacing for your own game, modify the variable below which affects the placement of the fireballs on a chain.  It is effectively the radius of a circle in pixels that could encompass a fireball.  I chose this specific value to allow my player to pass through the gaps between the fireballs when the Gap setting is true.  
```
var fireball_spacing = 18   
```
