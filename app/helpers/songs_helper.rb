module SongsHelper
	def seconds_to_time(length)
		minutes = (length / 60).to_i
		seconds = length - (minutes * 60)
		minutes.to_s+":"+seconds.to_s.rjust(2, '0')
	end
	def decade(year)
		case year
		when 1940..1949
				decade = 1940.to_s
		when 1950..1959
				decade = 1950.to_s
		when 1960..1969
				decade = 1960.to_s
		when 1970..1979
				decade = 1970.to_s
		when 1980..1989
				decade = 1980.to_s
		when 1990..1999
				decade = 1990.to_s
		when 2000..2009
				decade = 2000.to_s
		when 2010..2019
				decade = 2010.to_s	
		when 2020..2029
				decade = 2020.to_s							
		end
		decade = decade+'s'
	end
end
