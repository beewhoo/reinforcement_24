seats =[
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]



seated = false
seats.each_with_index do |f, row|
  break if seated
  f.each_with_index do |f2, row2|
    unless f2
      print "Row #{row+ 1 } seat #{row2 + 1} is free. Do you want to sit? (y/n)"
      if gets.chomp.downcase == 'y'
        print "What is your name? "
        seats[row][row2] = gets.chomp
        seated = true
        break
      else
        next
      end
    end
  end
end

p seats
