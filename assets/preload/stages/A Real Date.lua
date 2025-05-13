function onCreate()

    makeLuaSprite('Espacio', 'Doki Doki/bigmonika/Sky', -215, -100);
	scaleObject('Espacio', 1, 1);
    setScrollFactor('Espacio', 0, 0)
	addLuaSprite('Espacio', false);

    makeLuaSprite('Nubes', 'Doki Doki/bigmonika/Clouds', -215, -100);
	scaleObject('Nubes', 1, 1);
    setScrollFactor('Nubes', 0, 0)
	addLuaSprite('Nubes', false);

    makeLuaSprite('Brillo', 'Doki Doki/bigmonika/mask', -215, -100);
	scaleObject('Brillo', 1, 1);
    setScrollFactor('Brillo', 0, 0)
    setProperty('Brillo.alpha', 0)
	addLuaSprite('Brillo', false);
    
    makeLuaSprite('Background', 'Doki Doki/bigmonika/BG', -350, -100);
	scaleObject('Background', 1, 1);
    setScrollFactor('Background', 0.2, 0.2)
	addLuaSprite('Background', false);

    makeLuaSprite('Background2', 'Doki Doki/bigmonika/BG',getProperty('Background.width') -350, -100);
	scaleObject('Background2', 1, 1);
    setScrollFactor('Background2', 0.2, 0.2)
	addLuaSprite('Background2', false);

    makeLuaSprite('Luces', 'Doki Doki/bigmonika/lights', -215, -100);
	scaleObject('Luces', 1, 1);
    setScrollFactor('Luces', 0, 0)
    setProperty('Luces.alpha', 0)
	addLuaSprite('Luces', false);

    makeLuaSprite('Ventanas', 'Doki Doki/bigmonika/WindowLight', -350, -100);
	scaleObject('Ventanas', 1, 1);
    setScrollFactor('Ventanas', 0.2, 0.2)
    setProperty('Ventanas.alpha', 0)
	addLuaSprite('Ventanas', false);

    makeLuaSprite('Escritorio', 'Doki Doki/bigmonika/FG', -950, 0);
	scaleObject('Escritorio', 1, 1);
    setScrollFactor('Escritorio', 1, 1)
	addLuaSprite('Escritorio', false);
end

function onSongStart()
    runTimer('Off', 8)
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'Off' then
        doTweenAlpha('EfectoBV','Brillo',1,8,'SineInOut')
        doTweenAlpha('EfectoBD','Luces',1,8,'SineInOut')
        doTweenAlpha('EfectoXV','Ventanas',1,8,'SineInOut')
        runTimer('On', 8)
    end

    if tag == 'On' then
        doTweenAlpha('EfectoBV','Brillo',0,8,'SineInOut')
        doTweenAlpha('EfectoBD','Luces',0,8,'SineInOut')
        doTweenAlpha('EfectoXV','Ventanas',0,8,'SineInOut')
        runTimer('Off', 8)
    end
end