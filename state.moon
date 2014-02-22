export class State
	new: =>
	update: (dt) =>
	draw: =>
	keypressed: (key) =>
	keyreleased: (key) =>
	mousepressed: (x, y, button) =>
	mousereleased: (x, y, button) =>
	resume: =>
	pause: =>
	getEscapeState: => return gamestates['menu']
export class StateManager
	new: =>
		@states = {}
		@current = nil
	add: (name, state) => @states[name] = state
	get: (name) => return @states[name]
	gc: => return @current
	switch: (name) => @current = @states[name]
