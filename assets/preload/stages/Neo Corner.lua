function onCreate()
    makeLuaSprite('NeoBG', 'Neo/week3/sky', -500, -350);
    setLuaSpriteScrollFactor('NeoBG', 0.5, 0.5);
    scaleObject('NeoBG', 1.5, 1.5)
    addLuaSprite('NeoBG', false);

    makeLuaSprite('NeoBuildings', 'Neo/week3/phillybuildings', -500, -350);
    setLuaSpriteScrollFactor('NeoBuildings', 0.7, 0.7);
    scaleObject('NeoBuildings', 1.5, 1.5)
    addLuaSprite('NeoBuildings', false);

    makeLuaSprite('NeoBlue', 'Neo/week3/light0', -500, -350);
    setLuaSpriteScrollFactor('NeoBlue', 0.7, 0.7);
    scaleObject('NeoBlue', 1.5, 1.5)
    setProperty('NeoBlue.alpha', 0)
    addLuaSprite('NeoBlue', false);

    makeLuaSprite('NeoPink', 'Neo/week3/light1', -500, -350);
    setLuaSpriteScrollFactor('NeoPink', 0.7, 0.7);
    scaleObject('NeoPink', 1.5, 1.5)
    setProperty('NeoPink.alpha', 0)
    addLuaSprite('NeoPink', false);

    makeLuaSprite('RailWay', 'Neo/week3/roads', -700, -350);
    setLuaSpriteScrollFactor('RailWay', 1, 1);
    scaleObject('RailWay', 1.5, 1.5)
    addLuaSprite('RailWay', false);

    makeLuaSprite('NeoTrain', 'Neo/week3/train', 5000, 100);
    setLuaSpriteScrollFactor('NeoTrain', 1, 1);
    scaleObject('NeoTrain', 1.5, 1.5)
    addLuaSprite('NeoTrain', false);

    makeLuaSprite('NeoAlley', 'Neo/week3/alleyway', -500, -350);
    setLuaSpriteScrollFactor('NeoAlley', 1, 1);
    scaleObject('NeoAlley', 1.5, 1.5)
    addLuaSprite('NeoAlley', false);
end

function onSongStart()
    runTimer('Blue', 0)
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'Blue' then
        setProperty('NeoPink.alpha', 0)
        setProperty('NeoBlue.alpha', 1)
        runTimer('Pink', 10)
    end

    if tag == 'Pink' then
        setProperty('NeoPink.alpha', 1)
        setProperty('NeoBlue.alpha', 0)
        runTimer('Blue', 10)
    end
end