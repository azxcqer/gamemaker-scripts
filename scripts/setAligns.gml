///setAlign(h, v)
//set both aligments with a single command
//use 1 2 3 for easier asigment
//I can't fucking memorize them

var h = argument0
    v = argument1

//translate the numbers in actual haligns or just let them be if they are right
switch (h){
    case 1:
        h = fa_left
        break
    case 2:
        h = fa_center
        break
    case 3:
        h = fa_right
        break
}

switch (v){
    case 1:
        v = fa_top
        break
    case 2:
        v = fa_middle
        break
    case 3:
        v = fa_bottom
        break
}

draw_set_halign(h)
draw_set_valign(v)
