//nastaví rozlišení
var displayWidth = global.displayWidth; //display_get_width();
var displayHeight = global.displayHeight; //display_get_height();

//Nastaví velikost HUD
display_set_gui_size(displayWidth, displayHeight);

//Nastavi velikost okna
window_set_size(displayWidth, displayHeight);

//Zakladni rozliseni
var baseWidth = 1280;
var baseHeight = 720;

//Zjisti "aspect ratio"
var aspect = baseWidth/baseHeight

//Najde nejlepší možné rozliseni
if (displayWidth >= displayHeight)
{
    var height = min(baseHeight, displayHeight);
    var width = height * aspect;
}


//Změní nastavení na zvolené
surface_resize(application_surface,width, height);
