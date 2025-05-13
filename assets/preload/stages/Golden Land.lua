function onCreate()
    makeLuaSprite('lightsky','EXE/Mario Locuras/EXE2/Light 4',-550,-300)
    scaleObject('lightsky',6,6)
    setScrollFactor('lightsky',0.5,0.5)
    setProperty('lightsky.antialiasing', false)
    addLuaSprite('lightsky', false)

    makeLuaSprite('darksky','EXE/Mario Locuras/EXE2/Dark 4',-550,-300)
    scaleObject('darksky',6,6)
    setScrollFactor('darksky',0.5,0.5)
    setProperty('darksky.antialiasing', false)
    addLuaSprite('darksky', false)

    makeLuaSprite('lightsea','EXE/Mario Locuras/EXE2/Light 3',-550,-300)
    scaleObject('lightsea',6,6)
    setScrollFactor('lightsea',0.6,0.6)
    setProperty('lightsea.antialiasing', false)
    addLuaSprite('lightsea', false)

    makeLuaSprite('darksea','EXE/Mario Locuras/EXE2/Dark 3',-550,-300)
    scaleObject('darksea',6,6)
    setScrollFactor('darksea',0.6,0.6)
    setProperty('darksea.antialiasing', false)
    addLuaSprite('darksea', false)

    makeAnimatedLuaSprite('GFLand','EXE/Mario Locuras/EXE2/gfland', 100,500)
    addAnimationByPrefix('GFLand', 'dance', 'gfland idle', 8, true)
    scaleObject('GFLand', 6, 6)
    setProperty('GFLand.antialiasing', false)
    addLuaSprite('GFLand', false);

    makeLuaSprite('lightfloor','EXE/Mario Locuras/EXE2/Light 2',-650,-300)
    scaleObject('lightfloor',6,6)
    setProperty('lightfloor.antialiasing', false)
    addLuaSprite('lightfloor', false)

    makeLuaSprite('darkfloor','EXE/Mario Locuras/EXE2/Dark 2',-650,-300)
    scaleObject('darkfloor',6,6)
    setProperty('darkfloor.antialiasing', false)
    addLuaSprite('darkfloor', false)

    makeLuaSprite('lightblocks','EXE/Mario Locuras/EXE2/Light 1',-650,-300)
    scaleObject('lightblocks',6,6)
    setScrollFactor('lightblocks',1.1,1.1)
    setProperty('lightblocks.antialiasing', false)
    addLuaSprite('lightblocks', false)

    makeLuaSprite('darkblocks','EXE/Mario Locuras/EXE2/Dark 1',-650,-300)
    scaleObject('darkblocks',6,6)
    setScrollFactor('darkblocks',1.1,1.1)
    setProperty('darkblocks.antialiasing', false)
    addLuaSprite('darkblocks', false)

    makeLuaSprite('Vingette','EXE/vignette', 0, 0)
    setObjectCamera('Vingette', 'Other')
    scaleObject('Vingette',0.67,0.67)
    addLuaSprite('Vingette', true)

    setProperty('darksky.alpha', 0)
    setProperty('darksea.alpha', 0)
    setProperty('darkfloor.alpha', 0)
    setProperty('darkblocks.alpha', 0)
end