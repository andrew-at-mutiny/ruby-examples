## Explanation

When you load or require a file in ruby, it is evaluated at the highest level possible. This means that if two loaded files define the same class or constant, they will collide.

Ruby generally tries to append new methods and constants to classes or modules, but in the case that there is a collision all the way down to the method or function level, the last loaded version will be the one used.

### Dog
Both barker.rb and woofer.rb define a Dog class with a `bark` method. If the barker.rb file is loaded last, `bark` will produce "bark". If the woofer.rb file is loaded last, `bark` will produce "woof". Note that using `load` will actually allow you to reload the file again, while `require` only allows a file to load once (via `require`).

#### Require
```
require './woofer.rb' # => true
require './barker.rb' # => true
require './woofer.rb' # => false

Dog.new.bark # => 'bark'
```

#### Load
```
load './woofer.rb' # => true
load './barker.rb' # => true
load './woofer.rb' # => true

Dog.new.bark # => 'woof'
```

#### Mixed usage
```
load './woofer.rb' # => true
load './barker.rb' # => true
require './woofer.rb' # => true

Dog.new.bark # => 'woof'
```