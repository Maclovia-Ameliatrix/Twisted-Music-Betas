local xx = 1000; 
local yy = 900; 
local xx2 = 550; 
local yy2 = 1200; 
local ofs = 15;
local followchars = true;

function onCreatePost()
  makeLuaText('Lyrics', '', '1000', 150, 350)
  setTextAlignment('Lyrics', 'center')
  setObjectCamera('Lyrics', 'camOther')
  setTextSize('Lyrics', '50')
  addLuaText('Lyrics')
  setProperty('camHUD.visible', false)
  setProperty('camGame.visible', false)

  makeLuaSprite('Eyes', 'Mandela/Final Eyes', 0, 0);
	scaleObject('Eyes', 0.5, 0.5);
  setProperty('Eyes.alpha', 0)
  setObjectCamera('Eyes', 'camOther')
  addLuaSprite('Eyes', false);

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
  if curStep == 248 then
    setProperty('camGame.visible', true)
  end
  if curStep == 252 then
    setProperty('camGame.visible', false)
  end
  if curStep == 257 or curStep == 1665 then
    setProperty('camHUD.visible', true)
    setProperty('camGame.visible', true)
  end
  if curStep == 768 then
    setProperty('boyfriend.color', getColorFromHex('0x000000'))
    setProperty('dad.color', getColorFromHex('0x000000'))
    setProperty('DeadRoom.alpha', 0)
    setProperty('white.alpha', 1)
  end
  if curStep == 1008 or curStep == 1537 or curStep == 2376 then
    setProperty('camHUD.visible', false)
    setProperty('camGame.visible', false)
  end
  if curStep == 1025 then
    setProperty('boyfriend.color', getColorFromHex('0xffffff'))
    setProperty('dad.color', getColorFromHex('0xffffff'))
    setProperty('camHUD.visible', true)
    setProperty('camGame.visible', true)
    setProperty('DeadRoom.alpha', 1)
    setProperty('white.alpha', 0)
  end
  if curStep == 1600 then
    doTweenAlpha('ISeeYou', 'Eyes', 1, 1, 'linear')
  end
  if curStep == 1665 then
    setProperty('Eyes.alpha', 0)
  end
  if curStep == 2393 then
    setProperty('camGame.visible', true)
    setProperty('white.alpha', 1)
    setProperty('dad.alpha', 0)
    setProperty('boyfriend.alpha', 0)
    setProperty('DeadRoom.alpha', 0)
    setProperty('white.color', getColorFromHex('0xff0000'))
  end
  if curStep == 2416 then
    doTweenAlpha('white', 'Eyes', 1, 0.5, 'linear')
    doTweenAlpha('Eyes', 'white', 0, 0.5, 'linear')
  end
end
function onEvent(name, v1, v2)
  if name == 'Alternate Lyrics' then
      setTextString('Lyrics', v1)
      setProperty('Lyrics.color', getColorFromHex(v2))
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
  if followchars == true then
      if mustHitSection == false then
          setProperty('defaultCamZoom', 1.1)
          if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
              triggerEvent('Camera Follow Pos',xx-ofs,yy)
          end
          if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
              triggerEvent('Camera Follow Pos',xx+ofs,yy)
          end
          if getProperty('dad.animation.curAnim.name') == 'singUP' then
              triggerEvent('Camera Follow Pos',xx,yy-ofs)
          end
          if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
              triggerEvent('Camera Follow Pos',xx,yy+ofs)
          end
          if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
              triggerEvent('Camera Follow Pos',xx-ofs,yy)
          end
          if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
              triggerEvent('Camera Follow Pos',xx+ofs,yy)
          end
          if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
              triggerEvent('Camera Follow Pos',xx,yy-ofs)
          end
          if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
              triggerEvent('Camera Follow Pos',xx,yy+ofs)
          end
          if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
              triggerEvent('Camera Follow Pos',xx,yy)
          end
          if getProperty('dad.animation.curAnim.name') == 'idle' then
                    triggerEvent('Camera Follow Pos',xx,yy)
          end
      else
          setProperty('defaultCamZoom', 0.85)
          if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
              triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
          end
          if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
              triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
          end
          if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
              triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
          end
          if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
              triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
          end
          if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
             triggerEvent('Camera Follow Pos',xx2,yy2)
          end
      end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end
