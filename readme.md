# RBText
#### RBText is a gem that allows you to format, color, and manipulate terminal output.
[![Gem Version](https://badge.fury.io/rb/rbtext.svg)](https://badge.fury.io/rb/rbtext)

## Installation
Get it from RubyGems:
```sh
gem install rbtext
```

or download the rbtext-x.x.x.gem file from the releases:
```sh
gem install rbtext-x.x.x.gem
```

or build it yourself:
```sh
gem build rbtext.gemspec
gem install rbtext-x.x.x.gem
```

## Usage

### Cursor
The cursor can be moved with the `RBText::Cursor` module.

```rb
# UP
RBText::Cursor.up

# DOWN
RBText::Cursor.down

# LEFT
RBText::Cursor.left

# RIGHT
RBText::Cursor.right

# BEGINNING OF LINE
RBText::Cursor.beginning_of_line

# GO TO POS (x,y)
RBText::Cursor.go_to_pos(4,9)
```

You can get the cursor position with `RBText::Cursor.pos`. It returns as `[x, y]`

You can show and hide the cursor with `RBText::Cursor.show` and `RBText::Cursor.hide`

### Colored text
You can color the text with the RBText::Colors.color function. This function jsut returns ANSI escape codes.

You can get a color like this:
```rb
RBText::Colors.color :blue
```
That returns a foreground blue color code that can be inserted into a string like this:
```rb
"#{RBText::Colors.color :blue}Hello world"
```
You can also get a background color by adding `type: :bg` like this:
```rb
RBText::Colors.color :blue, type: :bg
```

You can use colors from the 256 color table (below) like this:
```rb
"#{RBText::Colors.num_color 138}"

# Or for a backround color:
"#{RBText::Colors.num_color 138, type: :bg}"
```
![256 Color table](https://user-images.githubusercontent.com/995050/47952855-ecb12480-df75-11e8-89d4-ac26c50e80b9.png)

By default the `color` and `num_color` methods return strings to be interpolated into other strings, but with the `mode: :set` argument, RBText will automatically print the escape code to set the color for everything printed after.

To clear all colors do
```rb
# Reset foreground colors
RBText::Colors.color :reset

# Reset background colors
RBText::Colors.color :reset, type: :bg

# Reset all colors
RBText::Colors.color :reset, type: :all
```

### Formatting
You can add formatting like underlines, italics, bold and faint text with the RBText::Formatting module.

```rb
# Underline
RBText::Formatting.underline

# Bold
RBText::Formatting.bold

# Italic
RBText::Formatting.italic

# Faint/light text
RBText::Formatting.faint

# Blinking text
RBText::Formatting.blinking

# Strikethrough text
RBText::Formatting.strikethrough
```
Similar to with colors, you can add `mode: :set` to any formatting function to set it.

You can clear all formatting with
```rb
RBText::Formatting.reset
```
or clear just one formatting option with
```rb
RBText::Formatting.reset(R::F.<option here>)
```

### Ftext
Ftext, or formatted text is an RBText class that allows you to write a string with formatting options inside of a `_. ._`.
inside of the `_. ._`, you can specify formatting options like this:
```rb
# Underline
"_.f:underline._"

# Blue
"_.c:blue._"

# Background blue
"_.cb:blue._"

# 137
"_.cn:137._"

# Background 137
"_.cbn:137._"

# Clear options
"_.f:reset._"
```

You can create Ftext with `txt=RBText::Ftext.new("<ftext here>")` or `txt="<ftext here>".to_ftext`
That object can be printed with `puts txt`
You can get the original ftext with `txt.original_text`
You can turn it into normal text with `txt.normal_text`

Ftext can also be used as a command line utility.
```sh
$ ftext '_.c:yellow._asd'
asd #Yellow

$ ls | ftext 'c:yellow'
asd.txt # yellow
example.rb # yellow

$ ls | ftext 'c:yellow,c:green'
asd.txt # yellow
example.rb # green
```

By default this adds a `_.f:reset._` to the beginning of each line. This can be removed with the `--noreset` flag.
With the `--dump` flag, ftext will return escaped escape codes that can be echoed with `echo -e` or set as a `PS1` value in bash.
```sh
$ ftext '_.c:green._asd' --dump 
\e[32masd\e[0m
```

### Screen
There is a `RBText::Screen` module that lets you clear the screen and the current line.
```rb
# Clear whole screen
RBText::Screen.clear

# Clear current line
RBText::Screen.clear_line
```

You can also get the window size with `RBText::Screen`
```rb
# Size
RBText::Screen.size # => [50, 100]

# Width
RBText::Screen.width # => 100

# Height
RBText::Screen.height # => 50
```

You can make a terminal bell with `RBText::Screen.bell`

### String methods
If you include `rbtext/string_methods`, you can use RBText formatting and colors as methods on a string.
```rb
require 'rbtext/string_methods' # => true

"Hello World".color :blue # => "\e[34mHello World\e[39m"
"Hello World".color :blue, type: :bg # => "\e[44mHello World\e[49m" 

"Hello World".bold # => "\e[1mHello World\e[0m" 
```

You can also chain methods to make the string blue with a green background.

### Short names
RBText has abbreviated names for modules and classes to make them cleaner.
```rb
# Ftext
R::Ft

# Formatting
R::F

# Cursor
R::Cr

# Colors
R::C

# Screen
R::S
```
