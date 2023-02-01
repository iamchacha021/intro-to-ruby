# INTRO
    character = "chacha"
    age = "24"
    puts ("There was once a man named " + character )
    puts ("He was " + age + " years old")

    character = "mary"
    age = "35"


    puts("Another good friend of his was " + character + ". She was " + age + " and so pretty!!")


# STRINGS
    phrase = "Giraffe Academy"
    puts phrase.index('ffe')

    puts "programming"[3].upcase()


# NUMBERS

    num = 20.0000001

    puts num.ceil()



# USER INPUT

    puts "Enter Your Name: "
    name = gets.chomp()
    puts "Enter Your Age: "
    age= gets.chomp()
    puts ("Hello " + name + ", you are " + age)

    # building a calculator

    puts "Enter a number: "
    num1 = gets.chomp().to_f
    puts "Enter another number: "
    num2 = gets.chomp().to_f

    puts(num1 + num2)

    # building a mad libs

    puts "Enter a color: "
    color = gets.chomp()

    puts = "Enter a plural noun: "
    plural_noun = gets.chomp()
    
    puts = "Enter a celeb: "
    celeb = gets.chomp()

    puts("Roses are " + color)
    puts(plural_noun + " are blue...blah blah blah!!!")
    puts(celeb + " is cold, we gat you!!!")


# ARRAYS
    friends = Array["Kevin","Karen", "Oscar", "Andy"]
    friends[0] = "Chacha"
    puts friends.sort()



# HASHES => Like objects in javascript
    states = {
        :Pennsylvania => "PA",
        :NewYork => "NY",
        :Oregon => "OR"
    }

    puts states["Pennsylvania"]



# METHODS/ FUNTIONS
    def sayhi(name="Nameless", age = -1)
        puts ("Hello " + name + " you are " + age.to_s)

    end

    sayhi("Chacha")

    def cube(num)
        puts "Bombo"
        return num * num * num , 70
    end
    puts cube(3)


# IF STATEMENTS
    ismale = true
    istall = true

    if ismale and istall
        puts "You are a tall male"

    elsif ismale and !istall
        puts "You are a short male"

    elsif !ismale and istall
        puts "You are a tall female"

    else
        puts "You are a short female"
    end

    def max(num1, num2, num3)
        if num1 >= num2 and num1 >= num3
            return num1

        elsif num2 >= num1 and num2 >= num3
            return num2

        else
            return num3
        end
    end

    puts max(100, 40, 30)


    # Building a better calculator
    puts "Enter first number: "
    num1 = gets.chomp().to_f
    puts "Enter operator: "
    op = gets.chomp()
    puts "Enter second number: "
    num2 = gets.chomp().to_f

    if op == "+"
        puts (num1 + num2)
    elsif op == "-"
        puts (num1 - num2)
    elsif op == "/"
        puts (num1/num2)
    elsif op == "*"
        puts (num1 * num2)
    else
        puts "Invalid Operator"
    end


# CASE STATEMENTS -> These are like the switch statements in javascripts
    def get_day_name(dayAbbrev)
        full_day_name = ""
        case dayAbbrev
        when "mon"
            full_day_name = "Monday"
        when "tue"
            full_day_name = "Tuesday"
        when "wed"
            full_day_name = "Wednesday"
        when "thu"
            full_day_name = "Thursday"
        when "fri"
            full_day_name = "Friday"
        when "sat"
            full_day_name = "Saturday"
        when "sun"
            full_day_name = "Sunday"
        else
            full_day_name = "Invalid abbreviation"

        end
        return full_day_name
    end

    puts get_day_name("thut")

# WHILE LOOPS
    index = 1
    while index <= 10
        puts index
        index += 2
        
    end

    # Guessing game
    secret_word = "giraffe"
    guess = ""
    guess_count = 0
    guess_limit = 3
    out_of_guesses = false

    while guess != secret_word and ! out_of_guesses
        if guess_count < guess_limit
            puts "Enter a guess: "
            guess = gets.chomp()
            guess_count += 1
        else
            out_of_guesses = true
        end
    end
    
    if out_of_guesses
        puts "You lost!!"
    else
        puts "You won!!!!"

    end

# FOR LOOPS
    friends = ["Kevin","Karen", "Oscar", "Angela", "Andy", "Chacha"]

    # Looping through an array
    friends.each do |friend|
        puts friend
    end

    # Looping through something six times
    for index in 0..5
        puts index
    end

    # Looping through something seven times
    7.times do |number|
        puts number
    end

    # exponent method
    def pow(base_num, pow_num)
        result = 1
        pow_num.times do
            result = result * base_num
        end

        return result
    end
    puts pow(5,3)

# READING FILES
    file = File.open("./employees.txt","r")

        # reading the file
        puts file.read()

        # reading one line
        # puts file.readline()

        # reading a character
        # puts file.readchar()
        # performing a while loop
        for line in file.readlines()
            puts line
        end
    file.close()


# WRITING FILES
    # a -> appends to the last of the file
    File.open("./employees.txt", "a") do |file|
        file.write("\nJess, hr")
    end

    # w -> overwrites the file, also can create new file
    File.open("index.html", "w") do |file|
        file.write("<h1>Hello</h1>")
    end

    # r+ -> can write and read files
    File.open("./employees.txt", "r+") do |file|
        file.readline()
        file.write("Hello\n")
    end

# HANDLING ERRORS
    lucky_nums = [4, 6, 10, 16, 24, 34, 46]
    
    
    begin
        # lucky_nums["dog"]
        num = 10/ 0    
    rescue ZeroDivisionError
        # Custom error message
        puts "You cannot divide a number by zero"
    rescue TypeError => e
        # ruby's error message stored in a variable
        puts e 
    end


# CLASSES AND OBJECTS
    # class Book
    #     attr_accessor :title, :author, :pages
    # end

    # book1 = Book.new()
    # book1.title = "Harry Potter"
    # book1.author = "JK Rowling"
    # book1.pages = 400

    # book2 = Book.new()
    # book2.title = "Lord of the Rings"
    # book2.author = "Tolkein"
    # book2.pages = 600

    # puts book2.pages

    # Using initialize method to make it less tedious
    class Book
        attr_accessor :title, :author, :pages
        def initialize(title, author, pages)
            @title = title
            @author = author
            @pages = pages
        end
    end

    book1 = Book.new("Harry Graham Potter", "John Kennedy Rowlings", 456)
    book2 = Book.new("Lord of the Rings", "Tolkein", 678)

    puts book1.pages

    # Classes Methods
    class Student
        attr_accessor :name, :major, :gpa

        def initialize(name, major, gpa)
            @name = name
            @major = major
            @gpa = gpa
        end

        def has_honours
            if @gpa >= 3.5
                return true
            end
            return false
        end
    end

    student1 = Student.new("Jim", "Business", 2.6)
    student2 = Student.new("Pam", "Art", 3.6)

    puts student2.has_honours

# BUILDING A MULTIPLE QUESTION QUIZ
    class Question
        attr_accessor :prompt, :correct_answer

        def initialize(prompt, correct_answer)
            @prompt = prompt
            @correct_answer = correct_answer
        end
    end

    p1 = "What is the color of apples?\n(a)red \n(b)purple \n(c)orange"
    p2 = "What is the color of bananas?\n(a)pink \n(b)red \n(c)yellow"
    p3 = "What is the color of pears?\n(a)yellow \n(b)green \n(c)orange"


    # Create an array of question
    questions = [
        Question.new(p1, "a"),
        Question.new(p2, "c"),
        Question.new(p3, "b")
    ]

    # create a function/ method that will accepts the array of questions as an argument, and loop through the questions
    def run_test(questions)
        answer = ""
        score = 0 
        for question in questions
            puts question.prompt
            answer = gets.chomp()

            if answer == question.correct_answer
                score += 1
            end
        end

        puts ("Your score is " + score.to_s + "/" + questions.length().to_s)
    end

    run_test(questions)


#  INHERITANCE
    class Chef
        def make_chicken
            puts "The chef makes chicken"
        end
        def make_salad
            puts "The chef makes salad"
        end
        def make_special_dish
            puts "The chef makes bbq ribs"
        end
    end

    class ItalianChef < Chef
        def make_special_dish
            puts "The chef makes pepperoni pizza"
        end
        def make_pasta
            puts "The chef makes pasta"
        end
    end

    chef = Chef.new
    chef.make_special_dish

    italian_chef = ItalianChef.new()
    italian_chef.make_special_dish

# USING EXTERNAL MODULES
    # First we need to import it
    require_relative "useful_tools.rb"
    include Tools
    sayhi("Tess")
    saybye("Tess")