require 'req'

crnt = nil

love.load = ->
	st\switch "splash"

love.update = (dt) ->
	st.current\update(dt)

love.draw = ->
	st.current\draw!
