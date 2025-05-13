function onCreate()
    makeLuaSprite('Normal','Minor Mods/iglesia/bg',-550, -1030);
    addLuaSprite('Normal',false);
    scaleObject('Normal', 1.35, 1.35);

    makeLuaSprite('EvilBG','Minor Mods/iglesia/evil-bg',-550, -1030);
    addLuaSprite('EvilBG',false);
    scaleObject('EvilBG', 1.35, 1.35);

    makeLuaSprite('EvilFloor','Minor Mods/iglesia/evil-floor',-550, -1030);
    addLuaSprite('EvilFloor',false);
    scaleObject('EvilFloor', 1.35, 1.35);

    makeLuaSprite('EvilPillars','Minor Mods/iglesia/evil-pillars',-550, -1030);
    addLuaSprite('EvilPillars',false);
    scaleObject('EvilPillars', 1.35, 1.35);

    makeLuaSprite('EvilCircle0','Minor Mods/iglesia/evil-circ0',-550, -1030);
    addLuaSprite('EvilCircle0',false);
    scaleObject('EvilCircle0', 1.35, 1.35);

    makeLuaSprite('EvilCircle1','Minor Mods/iglesia/evil-circ1',-550, -1030);
    addLuaSprite('EvilCircle1',false);
    scaleObject('EvilCircle1', 1.35, 1.35);

    makeLuaSprite('EvilCircle2','Minor Mods/iglesia/evil-circ2',-550, -1030);
    addLuaSprite('EvilCircle2',false);
    scaleObject('EvilCircle2', 1.35, 1.35);
    
    setProperty('Normal.alpha', 0)
    setProperty('EvilBG.alpha', 0)
    setProperty('EvilFloor.alpha', 0)
    setProperty('EvilPillars.alpha', 0)
    setProperty('EvilCircle0.alpha', 0)
    setProperty('EvilCircle1.alpha', 0)
    setProperty('EvilCircle2.alpha', 0)

end

