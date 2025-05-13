function onUpdate()
    if curStep == 896 or curStep == 1408 then
		setProperty('bg.alpha', 0)
		setProperty('floor.alpha', 0)
		setProperty('Coolbg.alpha', 1)
		setProperty('Coolfloor.alpha', 1)
    end
    if curStep == 1280 or curStep == 1600 then
		setProperty('bg.alpha', 1)
		setProperty('floor.alpha', 1)
		setProperty('Coolbg.alpha', 0)
		setProperty('Coolfloor.alpha', 0)
    end
end
