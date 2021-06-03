# ruby_linter
# About 
  
  This idea of making your workflow easier and reduce mistakes during coding is amazing 
  and believing you can create your own error checker is amazing.

  This project is about creating a linter for ruby files using ruby 

  # The Build
  The  Ruby linter currently detects for the following errors.
- check for missing emptyline at the end
- check for trailing spaces
- check for long lines that need to be shortened
- check for empty startline
- check empty line error

> Below are demonstrations of good and bad code for the above cases. I will use the pipe '|' symbol to indicate cursor position where necessary.
> # check for empty startline
---the good code

class Calculator
  attr_accessor :x, :y

  puts 'an example of how the calculator class works you call the method outside the class.'
  def initialize(num1, num2)
    @x = num1
    @y = num2
  end
  
 ---the bad code
 
 -----
class Calculator
  attr_accessor :x, :y

  puts 'an example of how the calculator class works you call the method outside the class.'
  def initialize(num1, num2)
    @x = num1
    @y = num2
  end
  Error  empty startline above the class Calculator denoted by ----

> # check empty line error
> 
  ---the good code
  
  def sub
    puts x - y
  end
  def mul   
    puts x * y
  end

   ---the bad code
   
  def sub
    puts x - y
  end
  -----
  def mul   
    puts x * y
  end
 Error  empty line denoted by ----

 > # check for long lines that need to be shortened
 ---the good code
class Calculator
  attr_accessor :x, :y
  puts 'an example of how the calculator class works,
   you call the method outside the class.'
  def initialize(num1, num2)
    @x = num1
    @y = num2
  end

  ---the bad code
class Calculator
  attr_accessor :x, :y
  puts 'an example of how the calculator class works you call the method outside the class.'
  def initialize(num1, num2)
    @x = num1
    @y = num2
  end
  Error in the line beginning with puts its too long

  > # check for trailing spaces
 ---the good code
 
   def sub
    puts x - y
  end

  ---the bad code
  
   def sub  ||
    puts x - y
  end
  Error Trailing space denoted by || indicating pisition of cursor

  > # check for missing emptyline at the end
  ---the good code
  
   def sub
    puts x - y
  end
  --------

  ---the bad code
  
   def sub
    puts x - y
  end
  Error detected by lack of ---- denoting the empty lastline

## Built With
- Ruby
- RSpec for Ruby Testing

 
  # Getting Started
To get a local copy up and running follow these simple example steps:
- Click [here](https://github.com/prolajumokeoni/laptop_scraper.git)
- Copy and clone to your local machine


### Prerequisites before installing in your machine
- For usage ensure you have ruby installed
- Text editor
- GitHub
- Git

# To check for errors on a file
 -In the downloader main Dir
 -Run bin/main.rb

 ## Testing

To test the code, run `rspec` from root of the folder using terminal.
Note: `testfile.rb` has been excluded from rubocop checks to allow RSpec testing without interfering with Gitflow actions


## 👤 **Daniel maina**

- GitHub: [@danmainah](https://github.com/danmainah)
- Twitter: [@Danmainah](https://twitter.com/dan_mainah)
- LinkedIn: [@Daniel-Maina](www.linkedin.com/in/daniel-maina-315a38191)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!

