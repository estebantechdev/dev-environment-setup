# myscript.rb

class EvaAI
  def initialize(name)
    @name = name
  end

  def introduce
    puts "Hello, I am #{@name} AI. Nice to meet you!"
  end

  def perform_task(task)
    puts "I am performing the task: #{task}"
  end
end

# Instantiate an EvaAI object
eva = EvaAI.new("Eva")

# Introduce the AI
eva.introduce

# Perform a task
eva.perform_task("Answering questions")

# Additional tasks or functionalities can be added as needed

