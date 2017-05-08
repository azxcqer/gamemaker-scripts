#define shadowText
///shadowText(x, y, text, textcolor, shadowcolor, shadowdist)
//draw text with shadow and full vars
//store the argument in local variables
var textX = argument0,
    textY = argument1,
    text = argument2,
    tColor = argument3,
    sColor = argument4,
    sDist = argument5;

//draw the shadow at the apropriate distance (it greatly varies depending on your game size ratio)
draw_text_colour(textX + sDist, textY + sDist, text, sColor, sColor, sColor, sColor, 1);

//draw the actual text
draw_text_colour(textX, textY, text, tColor, tColor, tColor, tColor, 1);

#define shadowTextSimple
///shadowTextSimple(x, y, text)
//draw the text with the minimum variables as possible
gml_pragma("forceinline");
shadowText(argument0, argument1, argument2, c_white, c_black, 1);

#define shadowTextColored
///shadowTextColored(x, y, text, color)
//draw the text with color
gml_pragma("forceinline");
shadowText(argument0, argument1, argument2, argument3, c_black, 1);

#define shadowTextReset
///shadowTextReset()
//reset the draw text variables
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);
