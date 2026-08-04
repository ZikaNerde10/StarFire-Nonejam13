//if (!instance_exists(target)) exit;

//x = lerp(x,target.x,0.1);
//y = lerp(y,target.y - yheight/6, 0.1);

//camera_set_view_pos(view_camera[0], x - xwidth/2, y - yheight/2);


var _x1 = alvo.x;
var _y1 = alvo.y;


var _dir = point_direction(_x1,_y1, mouse_x,mouse_y);

var _dist = point_distance(_x1,_y1, mouse_x,mouse_y);

_dist = clamp(_dist, -100, 100);

var _x2 = _x1 + lengthdir_x(_dist,_dir);
var _y2 = _y1 + lengthdir_y(_dist/2,_dir);

x = lerp(x, _x2, .1);
y = lerp(y, _y2, .1);