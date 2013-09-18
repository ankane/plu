class PLU

  def initialize(number)
    @number = number.to_s
  end

  def valid?
    /\A[89]?[34]\d{3}\z/.match(@number)
  end

  # TODO more items
  def name
    self.class.all[base]
  end

  def organic?
    modifier == "9"
  end

  def gm?
    modifier == "8"
  end

  def self.all
    {
      "4011" => "Bananas"
    }
  end

  protected

  def base
    @number[-4..-1]
  end

  def modifier
    @number[-5]
  end

end
