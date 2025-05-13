function onCreatePost()
	playAnim('gf', 'DanceLeft', true)
	setProperty('skipCountdown',true)
	setProperty('room.visible',false)
	setProperty('bed.visible',false)
	setProperty('table.visible',false)
	setProperty('lamp.visible',false)
	setProperty('stars.visible',false)
		setProperty('camGame.scroll.x', 690);
		setProperty('camGame.scroll.y', 500);
		setProperty('camFollowPos.x', 580);
		setProperty('camFollowPos.y', 460);
	--	triggerEvent('Camera Follow Pos',690,500)
	setPropertyFromClass('GameOverSubstate', 'characterName', 'shitstain dead normal'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
end

function onMoveCamera(focus)
    if focus == 'dad' then
		if curBeat % 2 == 0 then
		  --  playAnim('gf', 'DanceLeft', true)
		end
    elseif focus == 'boyfriend' then
		if curBeat % 2 == 0 then
         --   playAnim('gf', 'DanceRight', true)
		end
    end
end