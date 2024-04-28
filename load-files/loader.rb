# Both files define a Dog class
load './woofer.rb'
load './barker.rb'

dog = Dog.new

# Dog uses the last-loaded implementation of #bark
puts dog.bark

# Check "$ Dog", "$ dog.bark" here to see where they are defined
require 'pry'
require 'pry-doc'
binding.pry
