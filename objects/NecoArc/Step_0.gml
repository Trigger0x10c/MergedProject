right_key = keyboard_check(vk_right) || keyboard_check(ord("D"));
left_key = keyboard_check(vk_left) || keyboard_check(ord("A"));
up_key = keyboard_check(vk_up) || keyboard_check(ord("W"));
down_key = keyboard_check(vk_down) || keyboard_check(ord("S"));

//get xspeed and yspeed
xspeed = (right_key - left_key) * walk_speed;
yspeed = (down_key - up_key) * walk_speed;

//set sprite
if xspeed > 0 {face = RIGHT};
if xspeed < 0 {face = LEFT};

mask_index = idle[RIGHT]
sprite_index = sprite[face]

if xspeed == 0 && yspeed = 0
{
	sprite_index = idle[face];
}
//collisions
if place_meeting(x + xspeed, y, obj_wall)
{
xspeed = 0;
}
if place_meeting(x, y + yspeed, obj_wall)
{
yspeed = 0;
}
//move
x += xspeed;
y += yspeed;
//depth
USEDEPTH