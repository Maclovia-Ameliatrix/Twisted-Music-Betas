local followchars = true
local xx = 1150
local yy = 550
local xx2 = 1150
local yy2 = 550
local ofs = 15
function onCreatePost()
    for strumLineNotes = 0,7 do
        if strumLineNotes < 4 then
            setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','Custom Notes/EXE')
        end
    end
end
function onUpdate()
    for notesLength = 0,getProperty('notes.length') do
        if getPropertyFromGroup('notes', notesLength,'mustPress') == false and getPropertyFromGroup('notes', notesLength,'noteType') == '' then
            setPropertyFromGroup('notes',notesLength,'texture','Custom Notes/EXE')
			else if getPropertyFromGroup('notes', notesLength,'noteType') == 'Mom Sing' then
				setPropertyFromGroup('notes',notesLength,'texture','Custom Notes/Cerbera')
				else if getPropertyFromGroup('notes', notesLength,'noteType') == 'Pico Sing' then
					setPropertyFromGroup('notes',notesLength,'texture','Custom Notes/Robo Fever')
					else if getPropertyFromGroup('notes', notesLength,'noteType') == 'GF Sing' then
						setPropertyFromGroup('notes',notesLength,'texture','Custom Notes/Arcade')
					end
				end
			end
        end
    end
    if followchars == true then
		if mustHitSection == false then
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
		  if getProperty('dad.animation.curAnim.name') == 'idle' then
			triggerEvent('Camera Follow Pos',xx,yy)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'iChooseYou' then
			triggerEvent('Camera Follow Pos',xx,yy)
		  end
		else
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