class Array
	def sum(start = 0)
		inject(start, &:+)
	end

	puts [2342,234,23424].sum

end