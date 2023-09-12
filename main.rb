# Define an empty array to store tasks
tasks = []

# Display the menu and prompt for user input
def display_menu
  puts "\nTodo List Manager"
  puts "1. Add Task"
  puts "2. List Tasks"
  puts "3. Mark Task as Done"
  puts "4. Quit"
  print "Enter your choice: "
end

# Main program loop
loop do
  display_menu
  choice = gets.chomp.to_i

  case choice
  when 1
    print "Enter a task: "
    task = gets.chomp
    tasks << { name: task, done: false }
    puts "Task added: #{task}"
  when 2
    puts "\nTasks:"
    tasks.each_with_index do |task, index|
      status = task[:done] ? "[X]" : "[ ]"
      puts "#{index + 1}. #{status} #{task[:name]}"
    end
  when 3
    print "Enter the task number to mark as done: "
    task_number = gets.chomp.to_i
    if task_number >= 1 && task_number <= tasks.length
      tasks[task_number - 1][:done] = true
      puts "Task marked as done."
    else
      puts "Invalid task number."
    end
  when 4
    puts "Goodbye!"
    break
  else
    puts "Invalid choice. Please try again."
  end
end
