$F5::
MouseGetPos, mouseX, mouseY

PixelGetColor, color, %mouseX%, %mouseY%, RGB

StringRight color,color,6

tooltip, %mouseX%£¬%mouseY%ÑÕÉ«ÊÇ£º%color%
clipboard = if ( GetColor(%mouseX%,%mouseY%)="%color%") ;ok

return