module KangorooRobot
  class Robot

    def initialize
      @table      = Table.new(5,5)
      @position   = Position.new
      @direction  = Direction.new
      
      @parser     = Parser.new    

      welcome
    end

    def listen
      ARGF.each do |line|
        read line
      end
    end

    def read(str)
      return unless @parser.validate(str)
      
      instruction = @parser.load_instruction()
      instruction.execute(@position, @direction, @table)
    end

    def welcome

      puts %{

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
           | .`\/' | Y | !   Rowan Crawford.
           l  "~   j l j_L______
            \,____{ __"~ __ ,\_,\_
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ }

      }

    end

  end
end