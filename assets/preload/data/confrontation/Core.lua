local xx = 550;
local yy = 435;
local xx2 = 980;
local yy2 = 455;
local ofs = 35;
local ofs2 = 40;

function onCreate()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'Crazy Sonic Dead');
end

function onUpdate()
    if curStep == 832 then
        setProperty('Crime.alpha', 1)
        cameraFlash('game','0xff0000',1)
    end

    if curStep == 1216 then
        setProperty('Crime.alpha', 0)
        cameraFlash('game','0xff0000',1)
        for i = 0,7 do
            noteTweenAlpha('AdiosNota'..i, i, 0, 0.5,'quartInOut')
        end
    end

    if curStep == 1376 then
        setProperty('Crime.alpha', 0)
        for i = 0,7 do
            noteTweenAlpha('HolaNota'..i, i, 1, 0.5,'quartInOut')
        end
    end
end
