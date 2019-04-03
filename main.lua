-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

display.setDefault( "background", 100/255, 100/255, 200/255 )

local calculateButton = display.newImageRect( "./assets/calculate.png", 300, 90 )
calculateButton.x = display.contentCenterX
calculateButton.y = 280
calculateButton.id = " calculateButton "

local movie = display.newImageRect( "./assets/movie.jpg", 160, 160 )
movie.x = display.contentCenterX
movie.y = 50
movie.id = " movie "

local typehere = display.newText( "Type your age here: ", 160, 370, native.systemFont, 25 )
typehere:setFillColor( 240/255, 150/255, 0/255 )

--textfields
local myAgeTextfield = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 300, 60 )
myAgeTextfield.id = " myAgeTextField"

local screenText = display.newText( "What's your age?", 160, 180, native.systemFont, 20 )
screenText:setFillColor( 255/255, 29/255, 96/255 )

local function calculateButtonTouch ( event )
	local myAge = tonumber( myAgeTextfield.text )

	if myAge >= (122) then
		screenText.text = "Your about to die"
	elseif myAge >= (17) then
		screenText.text = "You can watch R Rated Movies"
	elseif myAge >= (13) then
		screenText.text = "You can watch PG-13 Rated Movies"
	elseif myAge >= (1) then
		screenText.text = "You can watch G Rated Movies"
	elseif myAge <= (0) then
		screenText.text = "No movies, your a fetus!"
	else
		screenText.text = "That's not a proper age!"
	end
end

calculateButton :addEventListener( "touch", calculateButtonTouch )