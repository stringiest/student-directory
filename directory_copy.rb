def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student has to the array
    students << {name: name, cohort: :november, hobby: :crime, origin: :England}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy".center(80)
  puts "-------------".center(80)
end

def print(names)
  index = 0
  while index < names.length do
    puts "#{(index + 1)}. #{names[index][:name]}, #{names[index][:origin]} \
    (#{names[index][:cohort]} cohort, hobby: #{names[index][:hobby]})"
    index += 1
  end
end

def print_footer(names)# finally, we print the total
puts "Overall, we have #{names.count} great students"
end

# nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
