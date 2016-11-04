require 'test_helper'

class AppTest < ActiveSupport::TestCase
 test "app attributes must not be empty" do
    app = App.new
    assert app.invalid?
    assert app.errors[:name].any?
    assert app.errors[:developer].any?
    assert app.errors[:description].any?
    assert app.errors[:price].any?
    assert app.errors[:ranting].any?
    assert app.errors[:image_irl].any?
  end

  test "app price must be positive" do
    app = apps(:one)

    app.price = -1
    assert app.invalid?
    assert app.errors[:price].any?

    app.price = 0
    assert app.invalid?
    assert app.errors[:price].any?

    app.price = 1
    assert app.valid?
    assert app.errors[:price].none?
  end
end
