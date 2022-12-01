camera_set_view_pos(view_camera[0],xpos,180);
xpos = max(xpos-0,3,0);

if (!fadeout) a = max(a-0.005,0.25); else a = min(a + 0.005,1);

l+= 2;

print = string_copy(str,1,1);
if (l > string_length(str)+100) && (next < array_length_1d(strings)-1)
{
	l = 0
	next++;
	if (next == array_length_1d(strings)-1) holdspace++;
}
str = strings[next];


if (keyboard_check_direct(vk_space))
{
holdspace++;
}

if (holdspace > 80) or (xpos < 100) fadeout = 1;

//if (a == 1) && (fadeout == 1) game_restart();
