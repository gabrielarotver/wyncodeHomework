cats = []

# There are 100 cats in a row all wearing hats. 🐱
100.times do 
	cats << "😹" #cats.push("😹")
end

# On the first pass, visit every cat and remove its hat. 🙀
(0...100).each do |i|
	cats[i] = "🙀"
end

# On the second pass, visit every other cat and replace its hat. 😺
(0...100).each do |i|
	if((i+1) % 2 == 0)
		cats[i] = "😹"
	end
end


# On the third pass, visit every third cat. 
# If the cat is hatted, remove its hat 😿. 
# If the cat is un-hatted, replace its hat. 😺
(0...100).each do |i|
	if ((i+1) % 3 == 0)
		if (cats[i] == "😹")
			cats[i] = "🙀"
		else
			cats[i] = "😹"
		end
	end
end

# On the 4th-100th passes, do the same.
# Add hats if they don’t exist and remove hats if they do.
(0...100).each do |i|
	if (cats[i] == "😹")
		cats[i] = "🙀"
	else
		cats[i] = "😹"
	end
end

# On the 100th pass, you should only visit the 100th cat (the last cat),
# removing or replacing its hat appropriately.
(0...100).each do |i|
	if ((i+1) % 100 == 0)
		if (cats[i] == "😹")
			cats[i] = "🙀"
		else	
			cats[i] = "😹"
		end
	end
end

puts cats