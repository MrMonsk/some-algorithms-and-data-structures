module Other
	def foo
		puts "foo"
	end
end

class Child
	include Other
end

kid = Child.new
kid.foo