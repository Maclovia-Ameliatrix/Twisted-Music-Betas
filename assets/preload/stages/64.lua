function onCreate()

	makeLuaSprite('bg','Minor Mods/bg',-300,-307)
	setScrollFactor('bg',0.5,0.5)
	addLuaSprite('bg')
	setProperty('skipCountdown',true)

end
function onCreatePost()

	setProperty('gf.visible',false)
	triggerEvent('onBeat','true')

	

end

function onUpdatePost()


	scaleObject('bg',getDaScale(2,0.8),getDaScale(2,0.8))

end


function getDaScale(factor,scale)

return scale*((1/getProperty('camGame.zoom')-scale)/factor)+1

end