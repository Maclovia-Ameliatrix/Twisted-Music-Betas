function onCreatePost()
	makeAnimatedLuaSprite('bendy_icon','icons/icon-nm_bendy', 490, 570)
	addAnimationByPrefix('bendy_icon','idle','nightmare bendy normal',24,true)
	addAnimationByPrefix('bendy_icon','win','nightmare bendy win',24,true)
	addLuaSprite('bendy_icon',false)
	setObjectCamera('bendy_icon','hud')
	setObjectOrder('bendy_icon', getObjectOrder('iconP2'))
	setProperty('iconP2.visible',false)
end

function onBeatHit()
	scaleObject('bendy_icon', 1.1, 1.1)
	doTweenX('ico', 'bendy_icon.scale', 1, 0.15, 'linear')
	doTweenY('icon', 'bendy_icon.scale', 1, 0.15, 'linear')
end

function onUpdatePost()
	if getProperty('healthBar.percent') > 20 then
		objectPlayAnimation('bendy_icon','idle',false)
	else
		objectPlayAnimation('bendy_icon','win',false)
	end
	
	if getProperty('bendy_icon.animation.curAnim.name') == 'win' then
		setProperty('bendy_icon.y', 530)
	end
	
	if getProperty('bendy_icon.animation.curAnim.name') == 'idle' then
		setProperty('bendy_icon.y', 570)
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	setProperty('bendy_icon.x', getProperty('bendy_icon.x') - 6.5)
	
	if getProperty('healthBar.percent') == 100 then
		setProperty('bendy_icon.x', 190)
	end
end

function noteMiss(id, direction, noteType, isSustainNote)
	setProperty('bendy_icon.x', getProperty('bendy_icon.x') + 15)
end