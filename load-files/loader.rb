# Both files define a Dog class
__send__(:load, './woofer.rb')
__send__(:load, './barker.rb')

dog = Dog.new

# Dog uses the last-loaded implementation of #bark
puts dog.bark

# Check "$ Dog", "$ dog.bark" here
require 'pry'
require 'pry-doc'
binding.pry
