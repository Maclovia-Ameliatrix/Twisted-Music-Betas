function onCreate()
    makeAnimatedLuaSprite('FuegoEpico', 'EXE/Slender/fireloop', -500, -200)
    addAnimationByPrefix('FuegoEpico', 'Rap', 'fire', 24, true)
    objectPlayAnimation('FuegoEpico', 'Rap', true)
    scaleObject('FuegoEpico', 5, 5)
    addLuaSprite('FuegoEpico', false)

    makeLuaSprite('Fondo', 'EXE/Slender/eminembg', 0, 0)
    addLuaSprite('Fondo', false)

    makeLuaSprite('Contricantes', 'EXE/Slender/borderthing', 0, 0)
    addLuaSprite('Contricantes', true)

    makeLuaSprite('EPIC', 'EXE/Slender/rapthing', 0, 0)
    setObjectCamera('EPIC', 'other')
    addLuaSprite('EPIC', false)

    makeLuaSprite('Eminem', 'EXE/Slender/black 1', 0, 0)
    setObjectCamera('Eminem', 'other')
    addLuaSprite('Eminem', false)

    makeLuaSprite('VS', 'EXE/Slender/vs', 0, 0)
    setObjectCamera('VS', 'other')
    addLuaSprite('VS', false)

    makeLuaSprite('Slenderman', 'EXE/Slender/black 2', 0, 0)
    setObjectCamera('Slenderman', 'other')
    addLuaSprite('Slenderman', false)

    makeLuaSprite('Abajo', 'black', 0, -50);
    scaleObject('Abajo', 1.3,1.3)
    setObjectCamera('Abajo', 'camHUD')
	addLuaSprite('Abajo', false);

    makeLuaSprite('Arriba', 'black', 0, 630);
    scaleObject('Arriba', 1.3,1.3)
    setObjectCamera('Arriba', 'camHUD')
	addLuaSprite('Arriba', false);
end