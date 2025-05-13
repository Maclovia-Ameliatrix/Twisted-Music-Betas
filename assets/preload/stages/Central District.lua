function onCreate()
    makeLuaSprite('NeoSky','Minor Mods/neon/weebSky', -200, 0)
    scaleObject('NeoSky',6,6)
    setProperty('NeoSky.antialiasing', false)
    addLuaSprite('NeoSky', false)

    makeLuaSprite('NeoStreet','Minor Mods/neon/weebStreet',-200, 0)
    scaleObject('NeoStreet',6,6)
    setProperty('NeoStreet.antialiasing', false)
    addLuaSprite('NeoStreet', false)

    makeAnimatedLuaSprite('EvilNeoStreet', 'Minor Mods/neon/animatedEvilSchool', -810, -1050)
    addAnimationByPrefix('EvilNeoStreet', 'idle', 'background 2 instance ', 24, true)
    objectPlayAnimation('EvilNeoStreet', 'idle', true)
    scaleObject('EvilNeoStreet',6,6)
    setProperty('EvilNeoStreet.antialiasing', false)
    setProperty('EvilNeoStreet.alpha', 0)
    addLuaSprite('EvilNeoStreet', false)
end