# KangorooRobot

The only purpose of this gem is to serve as a code exercise for Lookahead, (Sydney, Australia)

                  | Kangaroo Robot |
        | Herve Tatche's exercice for Lookahead |
                         .
                     /\ /l
                    ((.Y(!
                     \ |/
                     /  6~6,
                     \ _    +-.
                      \`-=--^-'
                      _/  \ 
                      (  .  Y
                    /"\ `--^--v--.
                   / _ `--"T~\/~\/
                  / " ~\.  !
            _    Y      Y./'
           Y^|   |      |~~7
           | l   |     / ./'
           | `L  | Y .^/~T
           |  l  ! | |/| |
           | .`\/' | Y | !   
           l  "~   j l j_L______
            \,____{ __"~ __ ,\_,\_
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kangoroo_robot'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kangoroo_robot

## Usage

Run `bin/kangoroo_robot` and you will be presented with a command prompt.

## Instructions

Kangoroo robot can receive different options to freely move around on a 5x5 table.

1. PLACE

This is the first command and it is mandatory to run it before giving any other instruction,
it will place the robot on the table with the coordinates and direction that we give it.

```
PLACE x,y,cardinal_point
```

Examples

```
PLACE 1,1,NORTH
PLACE 3,5,EAST
PLACE 3,0,SOUTH
```

2. MOVE

Once the robot has been placed on the map, it is free to move around. With move, the robot
will go one step further in the direction he is aiming to.

```
MOVE
```

3. LEFT

We can rotate the robot 90 degrees to the left so he points to a different cardinal point. This
way if he was pointing NORTH he will then aim to WEST

```
LEFT
```

4. RIGHT

We can rotate the robot 90 degrees to the right so he points to a different cardinal point. This
way if he was pointing NORTH he will then aim to EAST

```
LEFT
```

5. REPORT

The robot will inform you of his current position and direction.

```
REPORT
```

Examples

```
PLACE 1,2,WEST
REPORT
1,2,WEST

MOVE
REPORT
0,2,WEST
```

## Development

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/kangoroo_robot/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Credits

Kangoroo ASCII art was made by [Rowan Crawford](http://www.retrojunkie.com/asciiart/animals/kangaroo.htm).
