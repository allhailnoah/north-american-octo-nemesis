export class FontManager
	new: =>
		@storage = {}
	get: (type, size) =>
		if @storage[type]
			unless @storage[type][size]
				@storage[type][size] = make type, size
		else
			@storage[type] = {}
			@storage[type][size] = make type, size
		return @storage[type][size]
	make: (type, size) =>
		if font == "default" or font == "def"
			return love.graphics.newFont(size)
		else
			return love.graphics.newFont(type, size)
	set: (type, size) =>
		love.graphics.setFont(get(type, size))
