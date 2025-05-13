local xx = 500;
local yy = 200;
local xx2 = 1000;
local yy2 = 250;
local ofs = 10;
local followchars = true;
function onCreate()
    makeLuaSprite('ColorsBG','Hotline 024/clips/bg',-900,-700)
    scaleObject('ColorsBG',1.75, 1.75)
    setScrollFactor('ColorsBG',0.2,0.2)
    addLuaSprite('ColorsBG', false)

    makeLuaSprite('ColorsStars','Hotline 024/clips/stars',-900,-700)
    scaleObject('ColorsStars',1.75, 1.75)
    setScrollFactor('ColorsStars',0.4,0.4)
    addLuaSprite('ColorsStars', false)

    makeLuaSprite('ColorsBuildings','Hotline 024/clips/buildings',-900,-900)
    scaleObject('ColorsBuildings',1.75, 1.75)
    setScrollFactor('ColorsBuildings',0.6,0.6)
    addLuaSprite('ColorsBuildings', false)

    makeLuaSprite('ColorsRock','Hotline 024/clips/rock',-900,-800)
    scaleObject('ColorsRock',1.75, 1.75)
    setScrollFactor('ColorsRock',0.8,0.8)
    addLuaSprite('ColorsRock', false)

    makeLuaSprite('ColorsTress','Hotline 024/clips/trees',-900,-900)
    scaleObject('ColorsTress',1.75, 1.75)
    addLuaSprite('ColorsTress', false)

    makeLuaSprite('ColorsFloor','Hotline 024/clips/ground',-900,-900)
    scaleObject('ColorsFloor',1.75, 1.75)
    addLuaSprite('ColorsFloor', false)

    makeLuaSprite('ColorLights','Hotline 024/clips/overlay',-900,-900)
    scaleObject('ColorLights',1.75, 1.75)
    setBlendMode('ColorLights', 'add')
    addLuaSprite('ColorLights', true)
    
    makeLuaSprite('ColorsCables','Hotline 024/clips/cables',-900,-800)
    scaleObject('ColorsCables',1.75, 1.75)
    setScrollFactor('ColorsCables',1.2,1.2)
    addLuaSprite('ColorsCables', true)

    makeLuaSprite('ColorsBushes','Hotline 024/clips/bushes',-900,-800)
    scaleObject('ColorsBushes',1.75, 1.75)
    setScrollFactor('ColorsBushes',1.2,1.2)
    addLuaSprite('ColorsBushes', true)

    makeLuaSprite('Abajo', 'black', 0, -60);
    scaleObject('Abajo', 1.3,1.3)
    setObjectCamera('Abajo', 'camHUD')
	addLuaSprite('Abajo', false);

    makeLuaSprite('Arriba', 'black', 0, 660);
    scaleObject('Arriba', 1.3,1.3)
    setObjectCamera('Arriba', 'camHUD')
	addLuaSprite('Arriba', false);

end

function onUpdate()

    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	        if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end
