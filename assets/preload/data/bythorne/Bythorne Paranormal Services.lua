function onCreatePost()
  triggerEvent('Camera Follow Pos', 610, 250)
  setProperty('dad.flipX',false)
  setProperty('boyfriend.flipX',false)
  setProperty('boyfriend.x',-50)
  setProperty('dad.x',700)
  setProperty('gf.visible',false)
  setProperty('dad.visible',false)
  setProperty('boyfriend.visible',false)
  setProperty('bg.alpha',0)
  setProperty('layer2.alpha',0)
  setProperty('bg.alpha',0)
  setProperty('layer.alpha',0)
  setProperty('bg.alpha',0)
  setProperty('camHUD.visible',false)
  setProperty('camHUD.alpha',0)

  makeLuaText('BPS', 'Bythorne Paranormal Services', '1200', 50, 50)
  setTextAlignment('BPS', 'center')
  setTextSize('BPS', '70')
  setObjectCamera('BPS', 'camGame')

  makeLuaText('adam', 'Victim No.3:\nAdam Murray', '424', 100, 550)
  setTextAlignment('adam', 'center')
  setTextSize('adam', '40')
  setObjectCamera('adam', 'camGame')

  makeLuaText('jonah', 'Victim No.4:\nJonah Marshall', '424', 750, 550)
  setTextAlignment('jonah', 'center')
  setObjectCamera('jonah', 'camGame')
  setTextSize('jonah', '40')

  setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0 + 650);
  setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1 + 650);
  setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2 + 650);
  setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3 + 650);
  setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 650);
  setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 650);
  setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 650);
  setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 650);

end

function onStepHit()
  if curStep == 16 then
    setProperty('gradiant.alpha',1)
    setProperty('white.alpha',1)
    setProperty('layer.alpha',1)
  end
  if curStep == 32 then
    setProperty('dad.visible',true)
    setProperty('boyfriend.visible',true)
  end
  if curStep == 48 then
    addLuaText('BPS')
    addLuaText('adam')
    addLuaText('jonah')
  end
  if curStep == 64 then
    removeLuaText('BPS')
    removeLuaText('adam')
    removeLuaText('jonah')
    setProperty('camHUD.visible',true)
    doTweenAlpha('enter', 'camHUD', 1, 0.1,'linear')
  end
  if curStep == 320 then
    for i = 0,3 do
      noteTweenAlpha('HolaNota'..i, i, 0, 0.1,'quartIn')
      noteTweenAngle('Angle'..i, i, -360, 0.1, 'quartIn')
    end
    for i = 4,7 do
        noteTweenAngle('NotAngle'..i, i, 360, 0.1, 'quartIn')
    end
    noteTweenAngle('A', 0, 360, 0.2, 'circInOut')
    noteTweenX("x0",0,defaultOpponentStrumX0 +320,0.1,"quartIn");
    noteTweenX("x1",1,defaultOpponentStrumX1 +320,0.1,"quartIn");
    noteTweenX("x2",2,defaultOpponentStrumX2 +320,0.1,"quartIn");
    noteTweenX("x3",3,defaultOpponentStrumX3 +320,0.1,"quartIn");
    noteTweenX("x4",4,defaultPlayerStrumX0 -320,0.1,"quartIn");
    noteTweenX("x5",5,defaultPlayerStrumX1 -320,0.1,"quartIn");
    noteTweenX("x6",6,defaultPlayerStrumX2 -320,0.1,"quartIn");
    noteTweenX("x7",7,defaultPlayerStrumX3 -320,0.1,"quartIn");
    doTweenZoom('gameZoom','camGame',0.8,0.2)
    setProperty('defaultCamZoom', 0.8)
    setProperty('layer.alpha',0) 
    setProperty('layer.alpha',0)
    setProperty('layer3.alpha',1)
    setProperty('boyfriend.x',-225)
    setProperty('dad.x', 350)
    setProperty('gf.x', 900)
    setProperty('gf.visible',true)
    setProperty('gf.flipX',false)
  end
  if curStep == 988 then
    setProperty('camGame.visible', false)
    setProperty('camHUD.visible', false)
  end
end
function onUpdatePost()
  P1Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) + (150 * getProperty('iconP1.scale.x') - 150) / 2 - 26)
  P2Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) - (150 * getProperty('iconP2.scale.x')) / 2 - 26 * 2)
  setProperty('iconP1.x',P1Mult - 110)
  setProperty('iconP1.origin.x',240)
  setProperty('iconP1.flipX',true)
  setProperty('iconP2.x',P2Mult + 110)
  setProperty('iconP2.origin.x',-100)
  setProperty('iconP2.flipX',true)
  setProperty('healthBar.flipX',true)
end
