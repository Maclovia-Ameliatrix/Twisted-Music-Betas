function onCreate()
    makeLuaSprite('NeoBack','Neo/week1/backwall',-600,-400)
    scaleObject('NeoBack',1.1,1.1)
    addLuaSprite('NeoBack', false)

    makeLuaSprite('NeoFloor','Neo/week1/stage', -650, 600)
    scaleObject('NeoFloor',1.1,1.1)
    addLuaSprite('NeoFloor', false)

    makeLuaSprite('NeoColors','Neo/week1/lights', -650, -400)
    scaleObject('NeoColors',1.1,1.1)
    addLuaSprite('NeoColors', true)

    makeLuaSprite('NeoLights','Neo/week1/front_lights', -650, 300)
    scaleObject('NeoLights',1.1,1.1)
    addLuaSprite('NeoLights', true)

    makeAnimatedLuaSprite('NeoPublic','Neo/week1/stuff_1', -300, 600)
    addAnimationByPrefix('NeoPublic', 'Bump', 'Crowd 1  instance ' ,24, false)
    objectPlayAnimation('NeoPublic','Bump' , false)
    scaleObject('NeoPublic', 1.5, 1.5)
    addLuaSprite('NeoPublic', true);

end

function onBeatHit()
	if curBeat % 1 == 0 then
		objectPlayAnimation('NeoPublic', 'Bump');
    end
end