require 'test_helper'

class StocksControllerTest < ActionDispatch::IntegrationTest

  setup do
    @stock = stocks(:one)
    @stock.event.stocks.each do |stock|
      stock.update_wholesale_value!
    end
  end

  test "should not get index without sign_in" do
    get stocks_url
    assert_redirected_to controller: 'sessions', action: 'new'
  end

  test "should get index" do
    sign_in(scouts(:warehouse_admin))
    get stocks_url
    assert_response :success
  end

  test "should get stocks/ledger" do
    sign_in(scouts(:warehouse_admin))
    get stocks_ledger_url
    assert_response :success
  end

  test "should get stock transfer form" do
    sign_in(scouts(:warehouse_admin))
    get stock_transfer_form_url
    assert_response :success
  end 

  test "should get new" do
    sign_in(scouts(:warehouse_admin))
    get new_stock_url
    assert_response :success
  end

  test "should get edit" do
    sign_in(scouts(:warehouse_admin))
    get edit_stock_url(@stock)
    assert_response :success
  end

  test "should update stock" do
    sign_in(scouts(:warehouse_admin))
    patch stock_url(@stock), params: { stock: { product_id: @stock.product_id, quantity: @stock.quantity, event_id: @stock.event_id } }
    assert_redirected_to stocks_ledger_url
  end

  test "should destroy stock" do
    sign_in(scouts(:warehouse_admin))
    assert_difference('Stock.count', -1) do
      delete stock_url(@stock)
    end

    assert_redirected_to stocks_ledger_url
  end

  test "should show balance" do
    sign_in(scouts(:warehouse_admin))
    get stocks_path, params: { location: 'warehouse' }
    assert_select "td.#{products(:two).name.parameterize}.quantity", "1200"
  end

  test "wholesale value should balance" do
    sign_in(scouts(:warehouse_admin))
    get stocks_path
    assert_select "td.total-wholesale-value", "$33,800.00"
  end


  test "should create stock transfer from bsa" do
    sign_in(scouts(:warehouse_admin))
    assert_difference('Stock.count', 1) do
      post stocks_url, params: { stock: { product_id: @stock.product_id, quantity: @stock.quantity, event_id: @stock.event_id, is_transfer_from_bsa: true, location: @stock.location, date: Date.today } }
    end

    assert_redirected_to stocks_ledger_path
  end

  test "should create stock transfer from warehouse" do
    sign_in(scouts(:warehouse_admin))
    assert_difference('Stock.count', 2) do
      post stocks_url, params: { stock: { product_id: @stock.product_id, quantity: @stock.quantity, event_id: @stock.event_id, location: 'site sales', date: Date.today, is_transfer_from_warehouse: true } }
    end
    assert_redirected_to stocks_ledger_path

    two_ledger_entries = Stock.all[-2..-1]

    # quantities should cancel each other
    assert_equal two_ledger_entries.inject(0) {|sum, e| sum + e.quantity}, 0
  end

  test "inventory wholesale_value equals financials inventory value" do
    sign_in(scouts(:warehouse_admin))
    get stocks_path
    wholesale_value = (css_select("td.total-wholesale-value")).first
    get balance_sheet_path
    assert_select "td.popcorn-inventory"
    balance_sheet_value = (css_select("td.popcorn-inventory")).first
    assert_equal wholesale_value.content, balance_sheet_value.content
  end  

end
