# stdlib
require "json"

# modules
require_relative "plu/version"

class PLU
  def initialize(number)
    @number = number.to_s
  end

  def valid?
    /\A[89]?[34]\d{3}\z/.match(@number)
  end

  def name
    self.class.all[base]
  end

  def organic?
    modifier == "9"
  end

  def retailer_assigned?
    name.to_s.start_with?("Retailer Assigned")
  end

  def self.all
    @all ||= JSON.load_file(File.expand_path("../plu_codes.json", __dir__))
  end

  protected

  def base
    @number[-4..-1]
  end

  def modifier
    @number[-5]
  end
end
