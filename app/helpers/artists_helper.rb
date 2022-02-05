module ArtistsHelper

	def destination(first_name,last_name,band)
		if band
			case 
				when last_name.blank? == true
					dest = first_name
				when last_name.blank? != true
					dest = last_name+'+'+first_name
			end
		else
			case 
				when last_name.blank? == true
					dest = first_name
				when last_name.blank? != true
					dest = first_name+'+'+last_name
			end
		end
		dest = 'http://www.last.fm/music/'+dest
	end

	def url_artist(first_name,last_name,band)
		if band
			case 
				when last_name.blank? == true
					dest = first_name
				when last_name.blank? != true
					dest = last_name+'_'+first_name
			end
		else
			case 
				when last_name.blank? == true
					dest = first_name
				when last_name.blank? != true
					dest = first_name+'_'+last_name
			end
		end
		dest = dest.tr(' ','_')
		dest = CGI.escape(dest)
		wiki_artist = 'https://en.wikipedia.org/wiki/' + dest
	end
	
end
