function onCreate()
    makeLuaSprite('LaSantaLuz', 'Mandela/gradient', -1000, -300);
    scaleObject('LaSantaLuz', 0.75, 0.75)
	addLuaSprite('LaSantaLuz', false);
    makeLuaSprite('LaSantaArena', 'Mandela/sand', -1000, -300);
    scaleObject('LaSantaArena', 0.75, 0.75)
	addLuaSprite('LaSantaArena', false);

	makeLuaSprite('ElSantoHogar', 'Mandela/Jerusalen', -1000, -300);
    scaleObject('ElSantoHogar', 0.75, 0.75)
	addLuaSprite('ElSantoHogar', false);

    makeAnimatedLuaSprite('Ondas', 'Mandela/waves', 0, 0)
    addAnimationByPrefix('Ondas', 'idle', 'idle', 24, true)
    scaleObject('Ondas', 5 ,5)
    setObjectCamera('Ondas', 'other')
    setProperty('Ondas.alpha', 0)
    addLuaSprite('Ondas')
end