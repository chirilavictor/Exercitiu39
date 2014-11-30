module Dict
	def Dict.new
		# pe scurt facem un array de array-uri
		# va avea numele pe care il dam noi 

		# aDict = []  # varianta array

		 aDict = {}   # varianta hash

		#(0...num_buckets).each do 
		#	aDict.push([])
		#end
		#return aDict
	end

	def Dict.set(aDict, key, value)
		# cred ca merge si rand(0..aDict.length)
		#bucket_id = rand(0..aDict.length)   
		#key.hash % aDict.length # de ce sa facem o operatie complicata ca sa avem un numar random??
		#treaba asta cu random e o prostie, mult mai simplu e daca adaugi elem in ordine
		#bucket = aDict[bucket_id] # varianta cu array

		# aDict.push([key, value]) # in acest sistem nu mai avem 3 array unul in altul
								# ci sunt numai doua. Pt ca array-ul care il adaugam il adauam la urma si in alt array

		 aDict.merge! key => value

		end

	def Dict.get(aDict, key, default=nil)
=begin
		aDict.each do |x| # varianta cu array
			if x[0] == key
			 return x[1] 
			end
		end	
=end

		aDict.each do |k,v| # varianta cu hash
			if k == key
				return v
			end
		end

	end

	def Dict.delete(aDict, key)
		aDict.each do |x|
			if x[0] == key
				aDict.delete(x)
			end

		end
	end

	def Dict.list(aDict)
		aDict.each { |x| puts x[0], x[1] }
	end

end
