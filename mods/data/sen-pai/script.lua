    function onStepHit()
 if curStep ==1 then --The number is when you want the thing to happen, you can view the curSteps in the chart editer
        setProperty('camHUD.visible', false); --set the thing to false if you wanna hide the hud ,and true for it to appear   
        end
        if curStep ==16 then
        setProperty('camHUD.visible', true);  
        end
    end