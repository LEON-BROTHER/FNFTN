function onCreate()

	makeAnimatedLuaSprite('daisy', 'daisy', 1400, -350);
addAnimationByPrefix('daisy', 'danceLeft', 'daisy danceLeft', 12, false);
addAnimationByPrefix('daisy', 'danceRight', 'daisy danceRight', 12, false);
scaleObject('daisy', 0.85, 0.85);
setScrollFactor('daisy', 0.95, 0.95);
objectPlayAnimation('daisy', 'danceRight');

makeAnimatedLuaSprite('bulldozer1', 'bulldozer', 2300, 0);
addAnimationByPrefix('bulldozer1', 'danceLeft', 'bulldozer danceLeft', 12, false);
addAnimationByPrefix('bulldozer1', 'danceRight', 'bulldozer danceRight', 12, false);
scaleObject('bulldozer1', 1.5, 1.5);
setScrollFactor('bulldozer1', 0.95, 0.95);
objectPlayAnimation('bulldozer1', 'danceRight');

makeAnimatedLuaSprite('bulldozer2', 'bulldozer', -3500, 0);
addAnimationByPrefix('bulldozer2', 'danceLeft', 'bulldozer danceLeft', 12, false);
addAnimationByPrefix('bulldozer2', 'danceRight', 'bulldozer danceRight', 12, false);
scaleObject('bulldozer2', -1.5, 1.5);
setScrollFactor('bulldozer2', 0.95, 0.95);
objectPlayAnimation('bulldozer2', 'danceRight');

makeAnimatedLuaSprite('shyguy1', 'shyguy', 200, 700);
addAnimationByPrefix('shyguy1', 'danceLeft', 'shyguy danceLeft', 12, false);
addAnimationByPrefix('shyguy1', 'danceRight', 'shyguy danceRight', 12, false);
scaleObject('shyguy1', 0.8, 0.8);
setScrollFactor('shyguy1', 0.9, 0.9);
objectPlayAnimation('shyguy1', 'danceRight');

makeAnimatedLuaSprite('shyguy2', 'shyguy', 900, 700);
addAnimationByPrefix('shyguy2', 'danceLeft', 'shyguy danceLeft', 12, false);
addAnimationByPrefix('shyguy2', 'danceRight', 'shyguy danceRight', 12, false);
scaleObject('shyguy2', 0.8, 0.8);
setScrollFactor('shyguy2', 0.9, 0.9);
objectPlayAnimation('shyguy2', 'danceRight');

makeAnimatedLuaSprite('shyguy3', 'shyguy', 1900, -400);
addAnimationByPrefix('shyguy3', 'danceLeft', 'shyguy danceLeft', 12, false);
addAnimationByPrefix('shyguy3', 'danceRight', 'shyguy danceRight', 12, false);
scaleObject('shyguy3', 0.75, 0.75);
setScrollFactor('shyguy3', 0.9, 0.9);
objectPlayAnimation('shyguy3', 'danceRight');

makeAnimatedLuaSprite('shyguy4', 'shyguy', -300, -700);
addAnimationByPrefix('shyguy4', 'danceLeft', 'shyguy danceLeft', 12, false);
addAnimationByPrefix('shyguy4', 'danceRight', 'shyguy danceRight', 12, false);
scaleObject('shyguy4', 0.75, 0.75);
setScrollFactor('shyguy4', 0.9, 0.9);
objectPlayAnimation('shyguy4', 'danceRight');

makeLuaSprite('stage', 'Hotel_stageplatform', -1900, -2800);
setScrollFactor('stage', 1, 1);
scaleObject('stage', 2.3, 2.3);

makeLuaSprite('hotel_scaffolding', 'hotel_scaffolding', -1600, -2250);
setScrollFactor('hotel_scaffolding', 1, 1);
scaleObject('hotel_scaffolding', 2, 2);

makeAnimatedLuaSprite('mario', 'mario', 170, 0);
addAnimationByPrefix('mario', 'idle', 'mario idle', 12, false);
scaleObject('mario', 0.8, 0.8);
setScrollFactor('mario', 1, 1);
objectPlayAnimation('mario', 'idle');


makeAnimatedLuaSprite('luigi', 'luigi', 770, 0);
addAnimationByPrefix('luigi', 'idle', 'luigi idle', 12, false);
scaleObject('luigi', 0.8, 0.8);
setScrollFactor('luigi', 1, 1);
objectPlayAnimation('luigi', 'idle');

makeAnimatedLuaSprite('hotel', 'hotel', -700, -1800);
addAnimationByPrefix('hotel', 'idle', 'hotel idle', 12, false);
addAnimationByPrefix('hotel', 'impact', 'hotel impact', 12, false);
addAnimationByPrefix('hotel', 'falling', 'hotel falling', 12, false);
scaleObject('hotel', 1.6, 1.6);
setScrollFactor('hotel', 0.8, 0.8);
objectPlayAnimation('hotel', 'idle');


addLuaSprite('hotel', false);
addLuaSprite('daisy', false);
addLuaSprite('shyguy1', false);
addLuaSprite('shyguy2', false);
addLuaSprite('shyguy3', false);
addLuaSprite('shyguy4', false);
addLuaSprite('hotel_scaffolding',false);
addLuaSprite('stage',false);
addLuaSprite('mario', false);
addLuaSprite('luigi', false);
addLuaSprite('bulldozer1', true);
addLuaSprite('bulldozer2', true);

hoteljump = 0
hotelascend = 1
hotelland = 0
bulldozermove = 0

end

function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 1 == 0 then
		objectPlayAnimation('mario', 'idle');
		objectPlayAnimation('luigi', 'idle');
		objectPlayAnimation('daisy', 'danceRight');
		objectPlayAnimation('shyguy1', 'danceRight');
		objectPlayAnimation('shyguy2', 'danceRight');
		objectPlayAnimation('shyguy3', 'danceRight');
		objectPlayAnimation('shyguy4', 'danceRight');
		objectPlayAnimation('bulldozer1', 'danceRight');
		objectPlayAnimation('bulldozer2', 'danceLeft');

		if hoteljump == 0 then
		objectPlayAnimation('hotel', 'idle');
	end
		
	end
	if curBeat % 2 == 0 then
		objectPlayAnimation('daisy', 'danceLeft');
		objectPlayAnimation('shyguy1', 'danceLeft');
		objectPlayAnimation('shyguy2', 'danceLeft');
		objectPlayAnimation('shyguy3', 'danceLeft');
		objectPlayAnimation('shyguy4', 'danceLeft');
		objectPlayAnimation('bulldozer1', 'danceLeft');
		objectPlayAnimation('bulldozer2', 'danceRight');
	end
	
end

function onUpdate()
	if hoteljump == 1 then
		if hotelascend == 1 then
			setProperty('hotel.y', getProperty('hotel.y') - 65);
		end
		if hotelland == 1 then
			setProperty('hotel.y', getProperty('hotel.y') + 92);
		end
	end
	if bulldozermove == 1 then
		setProperty ('bulldozer1.x', getProperty ('bulldozer1.x') - 15);
		setProperty ('bulldozer2.x', getProperty ('bulldozer2.x') + 15);
	end

end

function onStepHit()
	if curStep == 336 then
		bulldozermove = 1
	end
	if curStep == 352 then
		bulldozermove = 0
	end
	if curStep == 1268 then
		hoteljump = 1
	end
	if curStep == 1289 then
		hotelascend = 0
		hotelland = 1
	end
	if curStep == 1304 then
		hotelland = 0
		objectPlayAnimation('hotel', 'impact');

	end
end

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if counter % 1 == 0 then
		objectPlayAnimation('mario', 'idle');
		objectPlayAnimation('luigi', 'idle');
		objectPlayAnimation('hotel', 'idle');
		objectPlayAnimation('daisy', 'danceRight');
		objectPlayAnimation('shyguy1', 'danceRight');
		objectPlayAnimation('shyguy2', 'danceRight');
		objectPlayAnimation('shyguy3', 'danceRight');
		objectPlayAnimation('shyguy4', 'danceRight');
		objectPlayAnimation('bulldozer1', 'danceRight');
		objectPlayAnimation('bulldozer2', 'danceLeft');
	end
	if counter % 2 == 0 then
		objectPlayAnimation('daisy', 'danceLeft');
		objectPlayAnimation('shyguy1', 'danceLeft');
		objectPlayAnimation('shyguy2', 'danceLeft');
		objectPlayAnimation('shyguy3', 'danceLeft');
		objectPlayAnimation('shyguy4', 'danceLeft');
		objectPlayAnimation('bulldozer1', 'danceLeft');
		objectPlayAnimation('bulldozer2', 'danceRight');
	end
end