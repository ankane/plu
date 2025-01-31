require_relative "test_helper"

class PLUTest < Minitest::Test
  def test_plu
    plu = PLU.new(4011)
    assert_equal true, plu.valid?
    assert_equal false, plu.organic?
    assert_equal false, plu.retailer_assigned?
  end

  def test_organic
    assert_equal true, PLU.new(94011).organic?
  end

  def test_invalid
    assert_equal false, PLU.new(2000).valid?
    assert_equal false, PLU.new(5000).valid?
    assert_equal false, PLU.new(400).valid?
    assert_equal false, PLU.new(40111).valid?
  end

  def test_invalid_modifier
    assert !PLU.new(74011).valid?
  end

  def test_name
    assert_equal "Bananas", PLU.new(94011).name
  end

  def test_no_name
    assert_nil PLU.new(4000).name
  end

  def test_all
    assert_kind_of Hash, PLU.all
  end

  def test_retailer_assigned
    assert_equal true, PLU.new(3170).retailer_assigned?
  end
end
