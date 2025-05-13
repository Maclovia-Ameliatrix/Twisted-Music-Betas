function onCreate()
    makeLuaSprite('CorruptBack','Minor Mods/Corrupted/stageback',-600,-200)
    scaleObject('CorruptBack',1.1,1.1)
    addLuaSprite('CorruptBack', false)

    makeLuaSprite('CorruptFront','Minor Mods/Corrupted/stagefront', -650, 600)
    scaleObject('CorruptFront',1.1,1.1)
    addLuaSprite('CorruptFront', false)

    makeLuaSprite('CorruptLadder','Minor Mods/Corrupted/ladder', -650, -200)
    scaleObject('CorruptLadder',1.1,1.1)
    addLuaSprite('CorruptLadder', false)

    makeLuaSprite('CorruptCurtains','Minor Mods/Corrupted/stagecurtains', -650, -100)
    scaleObject('CorruptCurtains',1.1,1.1)
    addLuaSprite('CorruptCurtains', true)

end