class Array
	def sum(start = 0)
		inject(start, &:+)
	end

	puts [3453,345345,3454534].sum 

end