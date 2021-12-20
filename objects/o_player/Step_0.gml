/// @description Insert description here
// You can write your code in this editor

//Z-sorting

depth = -y;

//Keyboard processing

inputX = keyboard_check(o_input.keyRight) - keyboard_check(o_input.keyLeft);
inputY = keyboard_check(o_input.keyDown) - keyboard_check(o_input.keyUp);
inputInteract = keyboard_check(o_input.keyInteract);


//Interactivity 

targetInteract = instance_nearest(x,y,o_interactable);


//Movement

moveLen = sqrt(power(inputX,2)+power(inputY,2));
moveX = inputX/moveLen;
moveY = inputY/moveLen;

//Default to walking
speedCur = speedWalk;

x += moveX*speedCur;
y += moveY*speedCur;

//Interaction

if (inputInteract)
{
	with (o_interactable)
	{
		event_user(0);
	}
}
