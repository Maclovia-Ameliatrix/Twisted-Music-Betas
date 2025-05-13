function onUpdate()
    setProperty('gf.flipX',true)
    if curStep == 816 then
        doTweenAlpha('FearV','Vector', 0, 4,'CircOut')
        doTweenAlpha('FearK','Knuckles', 0, 4,'CircOut')
        doTweenAlpha('FearM','Mighty', 0, 4,'CircOut')
        doTweenAlpha('FearC','Charmy', 0, 4,'CircOut')
        doTweenAlpha('FearA','Amy', 0, 4,'CircOut')
        doTweenAlpha('FearE','Espio', 0, 4,'CircOut')
        doTweenAlpha('FearS','boyfriend', 0, 4,'CircOut')
        doTweenAlpha('FearT','gf', 0, 4,'CircOut')
        doTweenAlpha('ohoh','chaotixSky', 0, 4,'CircOut')
        doTweenAlpha('ohno','chaotixfloor', 0, 4,'CircOut')
        doTweenAlpha('FearH','camHUD', 0, 4, 'CircOut')
    end

    if curStep == 928 then
        doTweenAlpha('FearCH','dad', 0, 0.5,'CircOut')
    end

    if curStep == 1008 then
        doTweenAlpha('OhnoV','Vector', 1, 0.2,'CircIn')
        objectPlayAnimation('Vector','VectorFear',true)
        doTweenAlpha('OhnoK','Knuckles', 1, 0.2,'CircIn')
        objectPlayAnimation('Knuckles','KnucklesFear',true)
        doTweenAlpha('OhnoM','Mighty', 1, 0.2,'CircIn')
        objectPlayAnimation('Mighty','MightyFear',true)
        doTweenAlpha('OhnoC','Charmy', 1, 0.2,'CircIn')
        objectPlayAnimation('Charmy','CharmyFear',true)
        doTweenAlpha('OhnoA','Amy', 1, 0.2,'CircIn')
        objectPlayAnimation('Amy','AmyFear',true)
        doTweenAlpha('OhnoE','Espio', 1, 0.2,'CircIn')
        objectPlayAnimation('Espio','EspioFear',true)
        doTweenAlpha('OhnoS','boyfriend', 1, 0.2,'CircIn')
        doTweenAlpha('OhnoT','gf', 1, 0.2,'CircIn')
        doTweenAlpha('OhnoCH','dad', 1, 0.2,'CircIn')
        doTweenAlpha('ohho','chaotixSky2', 1, 0.2,'CircIn')
        doTweenAlpha('ohsi','chaotixfloor2', 1, 0.2,'CircIn')
        doTweenAlpha('OhnoH','camHUD', 1, 0.2, 'CircIn')
    end
end