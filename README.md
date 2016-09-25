# LIKO-12
Love2D Forums Topic: https://love2d.org/forums/viewtopic.php?f=5&t=82913

We have an irc channel #liko12 at irc.oftc.net , feel free to join us

## Screenshots
![screenshot](https://raw.githubusercontent.com/RamiLego4Game/LIKO-12/master/screenshot_1.png "LIKO-12 Screenshot 1")
![screenshot](https://raw.githubusercontent.com/RamiLego4Game/LIKO-12/master/screenshot_2.png "LIKO-12 Screenshot 2")
![screenshot](https://raw.githubusercontent.com/RamiLego4Game/LIKO-12/master/screenshot_3.png "LIKO-12 Screenshot 3")
![screenshot](https://raw.githubusercontent.com/RamiLego4Game/LIKO-12/master/screenshot_4.png "LIKO-12 Screenshot 4")
![screenshot](https://raw.githubusercontent.com/RamiLego4Game/LIKO-12/master/screenshot_5.png "LIKO-12 Screenshot 5")
![screenshot](https://raw.githubusercontent.com/RamiLego4Game/LIKO-12/master/screenshot_6.png "LIKO-12 Screenshot 6")

## LIKO-12.txt
```
==========================================================================================
	LIKO-12 V0.0.3 PRE
	https://github.com/RamiLego4Game/LIKO-12
	Licensed under GPL-3, see LICENSE file for more info
	Author: RamiLego4Game // ramilego4game@gmail.com
	Contributers:
		technomancy: The editor console code.
	
	LIKO-12 is built with:
		L�VE Framework: http://love2d.org/
==========================================================================================

Welcome to LIKO-12:
	LIKO-12 is a PICO-8 clone but with extra abilities, different api and bigger screen width.
	We are working on this because PICO-8 is not available for free, and to create a clone
	without code limits (No tokens limit :) ).
	
	What's PICO-8 ??
	
	- PICO-8 is a fantasy console for making, sharing and playing tiny games and other computer 
	programs. When you turn it on, the machine greets you with a shell for typing in Lua programs 
	straight away and provides simple built-in tools for creating sprites, maps and sound.

	- LIKO-12 comes with a terminal, lua console, sprites editor and a code editor.
	It also comes with a modified PICO-8 font that have small letters support.
	
	- So you can basicly create spritesheets, and games using this console.

:: IRC	

	We have an irc channel #liko12 at irc.oftc.net , feel free to join us

:: Keys

	Escape: Quit running cart or switch between editors and the terminal.
	Mouse Wheel: Move up/down/left/right the cursor in the code editor.
	
	Player controls:

		player 1
		id:1,   2,    3,    4,     5,         6
		 left, right, up, down, {z, c, x}, {x, v, m}
		
		player 2
		id:1, 2, 3, 4,     5,            6
		   s, f, e, d, {lshift, tab}, {a, q}

:: Specs

	Display: 192x128, fixed 16 colour palette (PICO-8 pallete)
	Input: Full access to Mouse, Touch and Keyboard !
	SpriteSheet: 288 sprite (24x12)
	Code: LuaJit 5.1
	L�VE: 0.10.1
	Runs on: Windows, Linux, Mac, Android, iOS, RaspberryPi (Check PiLove).

:: Bugs/Crashes reports

	Please report those at the github issues tracker:
	https://github.com/RamiLego4Game/LIKO-12/issues

:: Hello World
	
	After LIKO-12 boots, try loading the hello world builtin cart by typing those commands in the terminal:
		
		cd demos
		load helloworld
		run
	
	Try to to press and drag anywhere on the screen.
	
	To quit the cart press escape key, now to view the source code/ sprites of the cart press escape key again.
	Now in the sprites editor try to edit the hello world sprite then press escape to return to the terminal and type run.
	
	Awesome right ?
	
	To save your cart type ( you may replace myhelloworld with any name you like ):
	
		save myhelloworld
		
:: Demo Carts
	
	Here's a list of the built-in demo carts the you can load, edit, run and save !
	
	cd demos
	
	tictactoe   A 2 players tictactoe game made by RamiLego4Game.
	helloworld  The helloworld example.
	noise       Fill the screen with random colors.
	
	To run a cart, open LIKO-12 terminal and type:
	cd demos
	load tictactoe
	run
	
	Press escape to stop the cart, and once more to enter editing mode.
	
	Delete the demos directory and restart liko12 to restore the defaults/ add new ones. "DEL demos"

:: Exporters / Importers
	
	To import or export the spritesheet as a .png:
	
		export spritesheet
		import spritesheet
		
:: Editing the internal spritessheet

	To edit the internal spritesheet type in the terminal:
	
		import editorsheet
	
	Edit the sheet as you like (You can edit the cursor too)
	
		export editorsheet
		reload
		
	Have fun hacking this :3
	
:: Terminal Commands

	COMMANDS <REQUIRED> [OPTIONAL]
	
	HELP: Shows help info
	NEW: Clears the memory
	RELOAD: Reloads the editorsheet
	RUN [args]: Runs the loaded cart
	SAVE <NAME>: Saves the current cart
	LOAD <NAME>: Loads a cart
	IMPORT <PATH>: Imports a spritesheet
	EXPORT <PATH>: Exports the current loaded spritesheet
	CLS: Clears the terminal
	VER: Shows LIKO-12 Title
	DIR/LS: Lists the directory items.
	CD: Change the working directory.
	DEL: Delete the give file/directory.
	MKDIR: Creates a directory at the given path.

:: Screen Rendering

LIKO-12 has non clearing canvas rendering system this means:
	- You don't have to redraw everything when resizeing thr lk12 window
	- The screen doesn't clears every frame
	- You can draw to the screen anywhere in the code
 
	Note: the everything called before _init() will be cleared.

:: Getting Started

To get started do the hello world tutorial then load and play demo games.
  
After that let's start:
	Load the helloworld cart, then true to edit the logo and run thr game.
	Go back to the editor and switch to the code editor (The [] tab)
	From here you can start by reading the demos code
	
How carts work:
	The game code get's excuted to overwrite the global callbacks
	Then the screen is cleared with black color
	After that the _init callback is called so the cart draws
	Finally whenever input happens the relevant callbacks are called so the game draws new content.
	On update the _update callback is called with delta time.
 
SpriteSheet:
	Before running game code, the spritesheet is loaded to the globals, so the game gets access to it's spritesheet
 
So now read the demo games, and be sure to check the API documentation bellow.

Console Editor Tab:
	This is a work in progress feature, don't use it for now.

==========================================================================================
	API
==========================================================================================

:: Lua Global
	Read runtime.lua in lk12 code for a full list of globals.

:: Callbacks
You should overwrite the callbacks you want to use, ex: function _init() end

_init
	This function is called at the initialization of your game.
	Start your game drawing from here, because any draw calls called when compiling your game code are cleared.

_update dt
	This function is called everyframe.
	
	- DT (Number): The delta time between _update calls in seconds.

_mpress x,y,b,it
	This function is called when a mouse button is pressed.
	- x,y (Numbers): The X and Y position of the mouse.
	- b (Number): The pressed mouse button.
	- it (Boolean): (istouch) if the mouse press is in fact a touch press.

_mmove x,y,dx,dy,it,iw
	This function is called whenever the mouse gets moved.
	- x,y (Numbers): The X and Y position of the mouse.
	- dx,dy (Numbers): How much the mouse has moved in each direction.
	- it (Boolean): (istouch) if the mouse press is in fact a touch move.
	- iw (Boolean): (iswheel) if true then the x,y are how much the mouse wheel has moved.

_mrelease x,y,b,it
	This function is called when a mouse button is released.
	- x,y (Numbers): The X and Y position of the mouse.
	- b (Number): The released mouse button.
	- it (Boolean): (istouch) if the mouse press is in fact a touch release.

_tpress id,x,y,dx,dy,p
	This function is called when the screen is touched.
	- id (Light-Number): The id of the touch.
	- x,y (Numbers): The X and Y position of the touch.
	- dx,dy (Numbers): How much the touch has moved in each direction, this should be always zero.
	- p (Number): (pressure) The pressure of the touch.

_tmove id,x,y,dx,dy,p
	This function is called when a screen touch is moved.
	- id (Light-Number): The id of the touch.
	- x,y (Numbers): The X and Y position of the touch.
	- dx,dy (Numbers): How much the touch has moved in each direction.
	- p (Number): (pressure) The pressure of the touch.

_trelease id,x,y,dx,dy,p
	This function is called when a screen touch is released.
	- id (Light-Number): The id of the touch.
	- x,y (Numbers): The X and Y position of the touch.
	- dx,dy (Numbers): How much the touch has moved in each direction.
	- p (Number): (pressure) The pressure of the touch.

_kpress k, sc, ir
	This function is called when a keyboard key is pressed.
	- k (String [KeyConstant]): The key that has been pressed.
	- sc (Number): The scancode of the pressed key.
	- ir (Boolean): (IsRepeat) See keyrepeat function.
 
_krelease k, sc
	This function is called when a keyboard key is released.
	- k (String [KeyConstant]): The key that has been released.
	- sc (Number): The scancode of the released key.

_tinput t
	This function is called when text is inputted.
	- t (String): The text inputted.

:: Graphics

color [c]
	Sets the current drawing color to the given color or black
	- c [Number]: The new color.

clear [c]
	Clears the screen and fills it with the given color black
	- c [Number]: The color to fill with

stroke [width]
	Sets the width of the lines and points to the given width or 1
	- width [Number]: The new width

point/points x1,y1,[x2,y2,...],[c]
	Draws the give points, if the number of the given args is odd then last one is set as the color.
	- x,y,... (Numbers): The points locations
	- c [Number]: The color to set to

line/lines x1,y1,x2,y2,[x3,y3,...],[c]
	Draws lines connecting the given points, if the number of the given args is odd then the last one is set as the color.
	- x,y,... (Numbers): The points locations
	- c [Number]: The color to set to
 
circle/circle_line x,y,r,[c]
	Draws a circle at the given position
	- x,y (Numbers): The center pos of the circle
	- r (Number): The radius of the circle
	- c [Number]: The color to set to

rect/rect_line x,y,w,h,[c]
	Draws a rectangle with the given specifications
	- x,y (Numbers): The position of the topleft corner of thr rect.
	- w,h (Numbers): The width and height of the rectangle.
	- c [Number]: The color to set to
 
print/print_grid text,[x],[y]
	Prints text at a specific location in the screen, be sure to set the color using color()
	print_grid is alligned ta 8x8 cell grid.
	- text (String or Table): The text to print, it can be a table: {"text",{r,g,b,a}}
	- x,y [Numbers]: The position to print at.

Sprite sprid, x,y, [r], [sx],[sy], [sprsheet]
	Draws a specific sprite at the given pos.
	- sprid (Number): The sprite id as shown in the sprite editor
	- x,y (Numbers): The topleft corner position of the sprite.
	- r [Number]: The rotation in radian.
	- sx,sy [Numbers]: The sprite width and hight multiplying factor.
	- sprsheet [liko12.spriteSheet]: The spritesheet containing the sprite (advanced users only)

SpriteGroup sprid, x,y, w,h, [sx],[sy], [sprsheet]
	Draws a group of sprites at the given pos.
	- sprid (Number): The id of thr top left sprite in the group.
	- x,y (Numbers): The topleft corner position
	- w,w (Numbers): The number of the sprites in width and height
	- sx,sy [Numbers]: The sprite width and hight multiplying factor.
	- sprsheet [liko12.spriteSheet]: The spritesheet containing the sprite (advanced users only)
 
SpriteMap
	The carts spritesheet
 
:: Math

ostime
	The default lua os.time function

floor
	The original lua math.floor function
 
rand_seed
	the default love.math.setRandomSeed function
 
rand
	the default love.math.random function
 
:: GUI

isInRect x,y,rect
	Returns true is the point is in the rect.
	- x,y (Numbers): The x and y positions of the point.
	- rect (Table): Rect table: {x,y,w,h}
	+ (Boolean): is in rect.
 
whereInGrid x,y,grid
	Returns false if the point is not in the grid at all.
	Return cellx, celly if the point is in the grid.
	- x,y (Numbers): the x and y posotions of the point to test.
	- grid (Table): The grid config {x,y,cellw,cellh,w,h}
	+ cx,cy (Numbers): The position in the grid.

btn n, player
	Returns the state of the specific player button, use in _update
	Check player controls section at the top
	- n (Number): the id of the button
	- p (Number): the number of the player (1/2)
	+ state (Boolean): the state of the button

getMPos
	Returns the current position of the mouse, may break some touch compatibility..
	+ x,y (Numbers): The position of the mouse, or the last moved touch.

isMDown b
	Returns if the specific mouse button is pressed down or not, may break some touch compatibility..
	- b (Number): The id of the button to check: 1:left 2:right 3:middle
	+ isDown (Boolean): The state of the mouse button, true for button 1 if the screen is touched.

:: Misc

keyrepeat state
	To enable _kpress isrepeat function

showKeyboard state
	To show the keyboard on mobile devices.
 
isMobile
	Returns true if liko12 is running on a mobile device
 
Image, ImageData, SpriteSheet, setCursor, newCursor, TextBuffer is not documented here, check api.lua for info about them 

==========================================================================================
	Changelog
==========================================================================================
V0.0.3 PRE:
1. Bugfixed V0.0.2 pre bugs (about 5/6 bugs) :)
2. Recoded the code editor to support vertical scrolling (no length limit anymore) [not fully bugtested..]
3. Fixed run command sandboxing and added "run [args]"
4. Fixed a bug in the tictactoe demo,type "delete demos" "load demos/tictactoe" "run"

V0.0.2 PRE:
1. Now sprite editor can set a right button color.
2. Sandboxed Save, Load, Import Commands.
3. Created virtual file system.
4. Added cd,ls,dir,mkdir,del commands.
5. [Internal] Better api sandboxing.
6. Now filters utf8 and unknown chars.
7. Changed to orange flavor (delete %appdata%/editorsheet if you edited that to update) to differ from pico8
8. New API Functions: getMPos, isMDown, btn
9. Run command accepts args
10. Renamed _startup to _init (sorry for breaking that..)
11. SAVE and EXPORT commands now saves to the last load/save path

V0.0.1 PRE:
First Public Release
```