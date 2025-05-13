function onUpdatePost(elapsed)
    setProperty('iconP2.visible', false)
    setProperty('dad.visible', false)
    triggerEvent('Camera Follow Pos', 700, 225)
    setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 650);
    setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 650);
    setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 650);
    setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 650);

    for i = 0, 3 do
        setPropertyFromGroup('opponentStrums', i, 'visible', false);
    end
end
