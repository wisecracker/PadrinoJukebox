class Track < ActiveRecord::Base

	def self.search_tracks (name)
		client = Soundcloud.new(:client_id => '49c0d300ada120523408062f82a18626')
		tracks = client.get('/tracks', :q => "#{name}")
		tracks
		
		# track_collection = []
		# tracks.each do |track|
		# 	track_info= JSON(track)
		# 	blood=Track.new

		# 	blood.duration = track_info["Duration"]
		# 	blood.artwork = track_info["Artwork"]
		# 	blood.genre = track_info["Genre"]
		# 	blood.title = track_info["Title"]
		# 	blood.url =  track_info["URL"]
		# 	track_collection << blood
		# 	binding.pry								
		# end
		# track_collection
	end
end
