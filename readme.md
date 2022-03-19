# RBText
#### RBText is a gem that allows you to print formatted text, and move the cursor easily.

## Installation
Get it from RubyGems:
```
gem install rbtext
```

or download the rbtext-x.x.x.gem file from the releases:
```
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
```

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

To clear all colors do
```rb
RBText::Formatting.reset
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
```

You can clear all formatting with
```rb
RBText::Formatting.reset
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

# Clear options
"_.f:reset._"
```
