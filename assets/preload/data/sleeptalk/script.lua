function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'shitstain dead normal'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
	setProperty('skipCountdown',true)
	playAnim('gf', 'DanceLeft', true)
	setProperty('camGame.alpha',0)
	setProperty('camHUD.alpha',0)
	setProperty('gf.visible',false);
end

function onMoveCamera(focus)
    if focus == 'dad' then
		if curBeat % 2 == 0 then
		--    playAnim('gf', 'DanceLeft', true)
		end
    elseif focus == 'boyfriend' then
		if curBeat % 2 == 0 then
       --     playAnim('gf', 'DanceRight', true)
		end
    end
end

function onSongStart()


	setProperty('camGame.alpha',1)
cameraFlash('game','0x000000',4)

end
function onCreatePost()

setProperty('cameraSpeed',0.3)

end
function onStepHit()
	if curStep == 504 then
		setProperty('camGame._fxFadeAlpha', 0);
		setProperty('gf.visible', true);
    end
	if curStep == 396 then
		cameraFade('game','0x000000',2)
	end

end

function onBeatHit()



	if curBeat == 20 then

	 doTweenAlpha('gg','camHUD',1,2.6,'linear')

    end



end


function onEvent(n,v,b)

	if n == "Pulse" then
        setProperty('camGame._fxFadeAlpha', 0);
		cameraFade('game','0x000000',0.8)
	end

end