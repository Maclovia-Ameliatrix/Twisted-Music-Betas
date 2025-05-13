function onCreate()
    makeAnimatedLuaSprite('fatalityBg1','EXE/Bodrionic.exe/fatal/launchbase',-1200,-900)
    addAnimationByPrefix('fatalityBg1','moviment','idle',14,true)
    setProperty('fatalityBg1.antialiasing',false)
    scaleObject('fatalityBg1',5.7,5.7)

    makeAnimatedLuaSprite('fatalityBg2','EXE/Bodrionic.exe/fatal/domain',-1200,-900)
    addAnimationByPrefix('fatalityBg2','moviment','idle',14,false)
    setProperty('fatalityBg2.antialiasing',false)
    scaleObject('fatalityBg2',5.7,5.7)

    makeAnimatedLuaSprite('fatalityBg2-5','EXE/Bodrionic.exe/fatal/domain2',-1200,-900)
    addAnimationByPrefix('fatalityBg2-5','moviment','idle',14,false)
    setProperty('fatalityBg2-5.antialiasing',false)
    scaleObject('fatalityBg2-5',5.7,5.7)

    makeAnimatedLuaSprite('fatalityBg3','EXE/Bodrionic.exe/fatal/truefatalstage',-1200,-900)
    addAnimationByPrefix('fatalityBg3','moviment','idle',14,true)
    setProperty('fatalityBg3.antialiasing',false)
    scaleObject('fatalityBg3',5.7,5.7)


	makeLuaSprite('AspectTV', '4_3 shit', 0, 0)
    setProperty('AspectTV.antialiasing', false)
    setObjectCamera('AspectTV', 'HUD')
    addLuaSprite('AspectTV', true)

    makeAnimatedLuaSprite('FatalityPopup','EXE/Bodrionic.exe/fatal/error_popups', 350,150)
    addAnimationByPrefix('FatalityPopup','error','idle',24,false)
    addAnimationByPrefix('FatalityPopup','byeerror','bye',24,false)
    setProperty('FatalityPopup.antialiasing',false)
    scaleObject('FatalityPopup',2.0,2.0)
    setObjectCamera('FatalityPopup','other')

    addLuaSprite('fatalityBg1')

end
function onBeatHit()
    objectPlayAnimation('fatalityBg2','moviment',false)
    objectPlayAnimation('fatalityBg2-5','moviment',false)
end

function onUpdate()
    if curStep == 1152 then
        addLuaSprite('fatalityBg2-5')
        addLuaSprite('fatalityBg2')
        removeLuaSprite('fatalityBg1')
    end
    if curStep == 2240 then
        removeLuaSprite('fatalityBg2')
        removeLuaSprite('fatalityBg2-5')
        addLuaSprite('fatalityBg3')
    end
    if curStep == 2560 then
        removeLuaSprite('fatalityBg3')
        addLuaSprite('FatalityPopup')
        objectPlayAnimation('FatalityPopup','error',false)
    end

    if curStep == 2568 then
        objectPlayAnimation('FatalityPopup','byeerror',false)
    end
    if curStep == 2570 then
        removeLuaSprite('FatalityPopup')
    end

end

