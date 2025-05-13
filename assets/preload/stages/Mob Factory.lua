function onCreate()

    makeLuaSprite('factory', 'Indie/Others/factory', -800, -500);
    scaleObject('factory', 1.25, 1.25);
    addLuaSprite('factory', false);

    makeLuaSprite('shadow', 'Indie/Others/shadow', -800, -500);
    scaleObject('shadow', 1.25, 1.25);
    addLuaSprite('shadow', true);

end