function onUpdate()
    songPos = getSongPosition()
    local currentBeat = (songPos/1000)*(bpm/80)
    doTweenY('dadTweenY', 'dad', -200+50*math.sin((currentBeat*0.25)*math.pi),0.001)
    doTweenY('boyfriendTweenY', 'boyfriend', -200+50*math.sin((currentBeat*0.25)*math.pi),0.001)
end