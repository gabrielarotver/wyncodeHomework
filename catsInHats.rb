cats = []

# There are 100 cats in a row all wearing hats. 🐱
100.times do
    cats << "😹" #cats.push("😹")
end

(1..100).each do |divisible|

    (0..99).each do |i|
        if((i+1) % divisible == 0)
            if (cats[i] == "😹")
                cats[i] = "🙀"
            else
                cats[i] = "😹"
            end
        end
    end
end

numbers = []
puts "The positions (starting from 1) in the array that don't have hats are:"

(0..99).each do |i|
    if (cats[i] == "🙀")
        numbers << (i+1)
    end
end

p numbers
#puts cats
