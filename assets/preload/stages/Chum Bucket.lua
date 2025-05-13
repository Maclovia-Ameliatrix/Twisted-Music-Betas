function onCreate()

    makeLuaSprite('ChumBucket', 'EXE/MCM/funnipat/breh4k', -600,-600);
    scaleObject('ChumBucket', 1.2, 1.2)
	addLuaSprite('ChumBucket', false);
    
    makeLuaSprite('Chain', 'EXE/MCM/funnipat/Hooksv21', -700,-600);
    setScrollFactor('Chain', 1.2, 1.2)
    scaleObject('Chain', 1.2, 1.2)
	addLuaSprite('Chain', true);
end