module KangorooRobot
  class Table

    attr_accessor :xlimit, :ylimit

    def initialize(xlimit, ylimit)
      @xlimit = xlimit
      @ylimit = ylimit

      is_valid?
    end

    def is_valid?
      if xlimit.is_a?(Integer) && ylimit.is_a?(Integer)
        if xlimit > 0 && ylimit > 0
          return true
        end
      end

      # We stop execution if table is not valid
      raise ArgumentError
    end
  end
end