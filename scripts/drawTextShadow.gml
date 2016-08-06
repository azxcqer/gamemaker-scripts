#define drawTextShadow
///drawTextShadow(x, y, text, textcolor, shadowcolor, shadowdist, halign, valign, reset aligment boolean)
//draw text with shadow and full vars
var tX = argument0,
    tY = argument1,
    text = argument2,
    tColor = argument3,
    sColor = argument4,
    sDist = argument5,
    halign = argument6,
    valign = argument7,
    reset = argument8;

//store the old draw color
var oldColor = draw_get_color();

//set the horizontal aligment
draw_set_halign(halign)

//set the vertical aligment
draw_set_valign(valign)

//set the draw color to the shadow color
draw_set_colour(sColor)

//draw the shadow
draw_text(tX+sDist,tY+sDist,text)

//set the text color
draw_set_colour(tColor)
//draw the actual text
draw_text(tX,tY,text)

//reset the aligment if the var is true
if reset {
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
}

//reset the draw color
draw_set_color(oldColor)

#define drawTextSimple
///drawTextSimple(x, y, text)
//draw the text with the minimum var possible

var tX = argument0;
var tY = argument1;
var text = argument2;

drawTextShadow(tX, tY, text, c_white, c_black, 1, fa_center, fa_middle, false)

#define drawTextColored
///drawTextColored(x, y, text, color)
//draw the text only colored

var tX = argument0;
var tY = argument1;
var text = argument2;
var color = argument3;

drawTextShadow(tX, tY, text, color, c_black, 1, fa_center, fa_middle, false)
