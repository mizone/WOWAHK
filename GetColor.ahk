$F5::
MouseGetPos, mouseX, mouseY

PixelGetColor, color, %mouseX%, %mouseY%, RGB

StringRight color,color,6

tooltip, %mouseX%��%mouseY%��ɫ�ǣ�%color%
clipboard = if ( GetColor(%mouseX%,%mouseY%)="%color%") ;ok

return