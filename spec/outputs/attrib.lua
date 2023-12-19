local a <const>, b <const>, c <const>, d <const> = 1, 2, 3, 4
do
	local a, b = setmetatable({ }, {
		__close = function(self)
			return print("closed")
		end
	})
	local _close_0 <close> = a
	local _close_1 <close> = b
	local c <const>, d <const> = 123, 'abc'
	close(a, b)
	const(c, d)
end
do
	local a <const> = f()
	local b, c, d
	do
		local _obj_0, _obj_1 = f1()
		b, c = _obj_0[1], _obj_0[2]
		d = _obj_1[1]
	end
end
do
	local a, b, c, d
	do
		local _obj_0, _obj_1, _obj_2 = f()
		a = _obj_0
		b, c = _obj_1[1], _obj_1[2]
		d = _obj_2[1]
	end
end
do
	local a, b
	do
		local _obj_0 = {
			2,
			3
		}
		a, b = _obj_0[1], _obj_0[2]
	end
end
do
	local v <close> = (function()
		if flag then
			return func()
		else
			return setmetatable({ }, {
				__close = function(self) end
			})
		end
	end)()
	local f <close> = (function()
		local _with_0 = io.open("file.txt")
		_with_0:write("Hello")
		return _with_0
	end)()
end
do
	local a <const> = (function()
		if true then
			return 1
		end
	end)()
	local b <close> = (function()
		if not false then
			if x then
				return 1
			end
		end
	end)()
	local c <const> = (function()
		if true then
			local _exp_0 = x
			if "abc" == _exp_0 then
				return 998
			end
		end
	end)()
	local d <close> = (function()
		if (function()
			if a ~= nil then
				return a
			else
				return b
			end
		end)() then
			return {
				value = value
			}
		end
	end)()
end
do
	local _ <close> = (function()
		local _with_0 = io.open("file.txt")
		_with_0:write("Hello")
		return _with_0
	end)()
	local _ <close> = setmetatable({ }, {
		__close = function()
			return print("second")
		end
	})
	local _ <close> = setmetatable({ }, {
		__close = function()
			return print("first")
		end
	})
end
local _defers = setmetatable({ }, {
	__close = function(self)
		self[#self]()
		self[#self] = nil
	end
})
local def
def = function(item)
	_defers[#_defers + 1] = item
	return _defers
end
do
	local _ <close> = def(function()
		return print(3)
	end)
	local _ <close> = def(function()
		return print(2)
	end)
	local _ <close> = def(function()
		return print(1)
	end)
end
